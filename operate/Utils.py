#!/usr/bin/python
# coding:utf8
import os,sys
from common.constant import *
import time
import common.glvariable

from getInfos import *

apk= sys.argv[1]


#get the package name of current app
def getCurrentPackageName():
	p = os.popen('adb shell dumpsys activity | findstr "mFocusedActivity"')
	res = p.read()
	strList = res.split( )
	if len(strList) < 4 or '/' not in strList[3]:
		print 'current str list is ',strList, "\n"
		return ''
	else:
		return strList[3][0:strList[3].index('/')]

def judgeIsOutCurrentApp(apko,apkName,appPackageName,windowPackageName):
	while(common.glvariable.isRunning):
		getInfo(apkName)
		print "get info over"
		currentPackageName=getCurrentPackageName()
		if currentPackageName == '':
			continue
		if currentPackageName != appPackageName and currentPackageName != windowPackageName:
			time.sleep(3)	
			currentPackageName=getCurrentPackageName()
			if currentPackageName != appPackageName and currentPackageName != windowPackageName:
				print '---------------out of AUT-----------------'
				apko.stopAPP(appPackageName)
				if "Launcher" not in currentPackageName:
					apko.stopAPP(currentPackageName)
		# getScreenShot(apkName)
		time.sleep(3)

def grantPermission(apk):
	permiFile = Constant.file_path+apk+"\\"+Constant.permission_file
	getPermission(apk,permiFile)
	fw = open(permiFile)
	lines = fw.readlines()
	for line in lines:
		os.system("adb shell pm grant com.mingrisoft "+ line.strip())
	fw.close()

def getPermission(apk,permiFile):
	filename = "Apk\\"+apk+"\\"+apk+"\\AndroidManifest.xml"
	xml = open(filename)
	lines = xml.readlines()
	xml.close()
	permissions = list()
	for line in lines:
		if "uses-permission" in line:
			ss=line.split()
			for item in ss:
				if "android:name" in item:
					permissions.append(item.split("\"")[1])

	fw = open(permiFile,"w")
	for per in permissions:
		fw.write(per+"\n")
	fw.close()
	
def hex2dec(string_num): 
  return str(int(string_num.upper(), 16)) 

def writeEditTextInfo(apk_name, outFile):
	fw = open(outFile,"w")
	edt_file = Constant.file_path+apk+"\\"+Constant.EditText_File
	if os.path.exists(edt_file):	
		f = open(edt_file)
		lines = f.readlines()
		id = val = ""
		for line in lines:
			if "id_val:" in line: 
				id = hex2dec(line.strip().split(":")[-1])
			if "value:" in line:
				val = line.strip().split(":")[-1]
			if "----------------------" in line:
				if id != "" and val !="":
					fw.write(id+":")
					fw.write(val+"\n")
				id = val = ""
		f.close()
	fw.close()