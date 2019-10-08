#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import os.path
import sys
import time
import threading
from ApkOpearate import *
from Calculator import *
from common.constant import *
from Utils import grantPermission
from Utils import writeEditTextInfo
from Utils import *
import common.glvariable
from datetime import datetime
import getEditText

		
def makeDir(dir):
	if(not os.path.exists(dir)): 
		os.makedirs(dir)

def removeDir(dir):
	if os.path.exists(dir):		
		shutil.rmtree(dir)
		
def removeFile(file):
	if os.path.exists(file):		
		os.remove(file) 

def getLaunchTime(apk_name,profile):
	apk_folder = Constant.apk_path + apk_name
	manifest = apk_folder + "\\" + apk_name  +"\\AndroidManifest.xml"
	print manifest
	if not os.path.exists(manifest):		
		decompile(apk_name)
	apko = ApkOpearate(apk_name,apk_folder)  

	package = apko.getPackage()
	main = apko.getMain()
	print "MainActivity is "+ main 
	
	os.system('adb shell am force-stop '+package)
	os.system('adb shell am  start -n' +package+'/'+main)
	
	start=datetime.now()
	end = start 
	
	p = os.popen('adb shell dumpsys activity | findstr "mFocusedActivity"')
	res = loadRes = p.read()

	while loadRes == res:
		p = os.popen('adb shell dumpsys activity | findstr "mFocusedActivity"')
		res = p.read()
		end=datetime.now()
		if (end - start).seconds >10:
			print 'No splash Activity'
			end = start 
			break
			
	f=open(profile,'a')
	#f.write("\n")
	f.write("[#application launch time --more than splash time]\n")

	if start == end:
		print "sleeptime 1000" 
		f.write("sleeptime:1000\n")
	else:
		gap = (end - start).seconds * 1000
		print "sleeptime " +str(gap) 
		f.write("sleeptime:"+str(gap)+'\n')
	f.close()
	
def closeCurrentApp(apk_name,windowPackageName):
	apk_folder = Constant.apk_path + apk_name
	apko = ApkOpearate(apk_name, apk_folder)
	currentPackageName = getCurrentPackageName()
	if( currentPackageName != windowPackageName):
		apko.stopAPP(currentPackageName)

	
if __name__ == '__main__' :
	apk_name = sys.argv[1]
	windowPackageName = getCurrentPackageName()
	print "aaa"
	profile = Constant.profile_path + apk_name + "\\" + Constant.profile
	if not os.path.exists(profile):
		makeDir(Constant.profile_path + apk_name + "\\")
		base = Constant.profile_path + Constant.profile
		shutil.copy(base, profile)
	
		print "must connect phone and open!"
		getLaunchTime(apk_name, profile)
	
	getEditText.analysis(apk_name)
	
	apk_info_path = Constant.file_path + apk_name + "\\"
	EditTextFile = apk_info_path + Constant.editText_values
	removeFile(EditTextFile)
	writeEditTextInfo(apk_name, EditTextFile)
	print "write profile finish"
	closeCurrentApp(apk_name,windowPackageName)