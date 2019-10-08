#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import os.path
import sys
import time
from ApkOpearate import *
from Calculator import *
from common.constant import *

def removeFile(file):
	if os.path.exists(file):		
		os.remove(file) 

def removeDir(dir):
	if os.path.exists(dir):		
		shutil.rmtree(dir)
		
def makeDir(dir):
	if(not os.path.exists(dir)): 
		os.makedirs(dir)
		

	
if __name__ == '__main__' :

	apk_name = sys.argv[1]
	apk_robt_name = apk_name+"_Test"
	
	logsDir = Constant.file_path + apk_name + "\\" + Constant.log_path
	infoDir = Constant.file_path + apk_name + "\\" + Constant.info_path
	monkeyDir = Constant.file_path + apk_name + "\\" + Constant.monkey_path
	jimpleDir = Constant.file_path + apk_name + "\\" + Constant.jimple_path
	
	makeDir(logsDir)
	makeDir(infoDir)
	makeDir(monkeyDir)
	makeDir(jimpleDir)
	
	apk_folder = Constant.apk_path + apk_name
	apk_robt_folder = Constant.apk_robt_path + apk_robt_name
	removeDir(apk_robt_folder)
	  
	apk_path = apk_folder + "\\" + apk_name 
	apk_robt_path = apk_robt_folder+ "\\" + apk_robt_name 
	
	
	apko = ApkOpearate(apk_name,apk_folder)  
	package = apko.getPackage()
	
	# buile robotium apk
	apko2 = ApkOpearate(apk_name,apk_robt_folder)
	apko2.createRobotProject(package)
	apko2.buildApk()
	
	
	print 'install apk under test'
	os.popen("adb uninstall "+package)
	os.system("adb install "+ apk_path+"_signed.apk")

	print '\ninstall apk for exploration'
	os.popen("adb uninstall "+package+".test")
	os.system("adb install "+ apk_robt_path+"_signed.apk")

   
	
