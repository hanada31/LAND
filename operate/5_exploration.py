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
import datetime
from getScreenShot import *
from getInfos import *

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
	apk_folder = Constant.apk_path + apk_name
	apk_path = apk_folder + "\\" + apk_name
	apk_info_path = Constant.file_path + apk_name + "\\"

	logsDir = Constant.file_path + apk_name + "\\" + Constant.log_path
	infoDir = Constant.file_path + apk_name + "\\" + Constant.info_path
	monkeyDir = Constant.file_path + apk_name + "\\" + Constant.monkey_path
	jimpleDir = Constant.file_path + apk_name + "\\" + Constant.jimple_path
	makeDir(logsDir)
	makeDir(infoDir)
	makeDir(monkeyDir)
	makeDir(jimpleDir)

	apk_robt_folder = Constant.apk_robt_path + apk_name + "_Test"
	apk_test_folder = Constant.apk_test_path + apk_name + "_Test"
	apk_robt_path = apk_robt_folder + "\\" + apk_name + "_Test"
	apk_test_path = apk_test_folder + "\\" + apk_name + "_Test"

	ins_info_file = Constant.file_path + apk_name + "\\" + Constant.ins_info_file
	shutil.copy(Constant.apk_path + apk_name + "\ins_info", ins_info_file)
	
	finish_file = apk_info_path + Constant.finish_file
	log_file = apk_info_path + Constant.log_file
	name_file = apk_info_path + Constant.name_file
	mainact_file = apk_info_path + Constant.mainact_file
	crash_file = apk_info_path + Constant.crash_file
	method_file = apk_info_path + Constant.method_file
	recordEvents_file = apk_info_path + Constant.recordEvents_file
	manifestStartFlagFile = apk_info_path + Constant.manifestStartFlagFile
	ser_file = apk_info_path + Constant.ser_file
	currentATG_file = apk_info_path + Constant.currentATG_file
	GUIinfo_file = apk_info_path + Constant.GUIinfo_file
	screenshot_file = apk_info_path + Constant.screenshot_file
	

	instrument_log = apk_info_path + Constant.info_path + Constant.instrument_log
	instrument_log_this = apk_info_path + Constant.info_path + Constant.instrument_log_this
	instrument_log_this_target = apk_info_path + Constant.info_path + Constant.instrument_log_this_target

	re_auto_file = apk_info_path + Constant.re_auto_file
	re_stake_file = apk_info_path + Constant.re_stake_file
	re_calculate_file = apk_info_path + Constant.re_calculate_file

	profile = Constant.profile_path + apk_name + "\\" + Constant.profile
	if not os.path.exists(profile):
		profile = Constant.profile_path + Constant.profile	
	EditTextFile = apk_info_path + Constant.editText_values
	
	removeDir(apk_robt_folder)
	removeDir(apk_test_folder)
	
	# removeFile(finish_file)
	# removeFile(log_file)
	# removeFile(mainact_file)
	# removeFile(crash_file)
	# removeFile(method_file)
	# removeFile(recordEvents_file)
	# removeFile(ser_file)
	# removeFile(currentATG_file)
	# removeFile(GUIinfo_file)
	# removeFile(screenshot_file)

	removeFile(instrument_log)
	removeFile(instrument_log_this)
	removeFile(instrument_log_this_target)

	removeFile(re_auto_file)
	removeFile(re_stake_file)
	removeFile(re_calculate_file)
	
	#write file about package and classname
	apko = ApkOpearate(apk_name, apk_folder)  
	apko.get_methods()

	acts = apko.getAct()
	package = apko.getPackage()#package name of app under testing
	main = apko.getMain()#main activity name of app under testing

	print "push file to phone"
	os.system("adb push " + name_file + " sdcard/getName.txt")
	os.system("adb push " + manifestStartFlagFile + " sdcard/manifestStartFlag.txt")
	os.system("adb push " + profile+" sdcard/profile.txt")
	os.system("adb push " + EditTextFile+" sdcard/EditTextFile.txt")
	
	print "start exploration\n"

	print "adb shell am instrument -e class "+package+".test."+Constant.bfs_preparefile+" -w "+package+".test/android.test.InstrumentationTestRunner >>" + Constant.re_auto_file
	command = "adb shell am instrument -e class "+package+".test."+Constant.bfs_preparefile+" -w "+package+".test/android.test.InstrumentationTestRunner"
	os.system("echo "+command)
	os.system(command)
	
	entry = Constant.bfs_testfile
	i=0

	#start a new thread to judge whether the testing process get stuck out of AUT
	windowPackageName=getCurrentPackageName()
	os.system("adb shell rm /mnt/sdcard/currentATG.dot")
	while(True):
		common.glvariable.isRunning=True

		t1 = threading.Thread(target=judgeIsOutCurrentApp, args=(apko,apk_name,package, windowPackageName))
		t1.setDaemon(True)
		t1.start()

		# t2 = threading.Thread(target=getInfo,args=(apk_name))
		# t2.setDaemon(True)
		# t2.start()
        #
		# t3 = threading.Thread(target=getScreenShot,args=(apk_name))
		# t3.setDaemon(True)
		# t3.start()

		i+=1
		print str(i)
		apko.logTest(instrument_log)
		apko.logCrash(logsDir + apk_name+str(i)+".txt")
		print  "adb shell am instrument -e class "+package+".test."+entry+" -w "+package+".test/android.test.InstrumentationTestRunner >>"+Constant.re_auto_file
		command = "adb shell am instrument -e class "+package+".test."+entry+" -w "+package+".test/android.test.InstrumentationTestRunner"
		os.system("echo "+command)
		os.system(command)

		# apko.stopAPP(package)
		print "pull files from phone"
		
		common.glvariable.isRunning = False  # stopping the thread that judges whether lock occurs
		getScreenShot(apk_name)
		# getInfo(apk_name)
		os.system("adb pull  /mnt/sdcard/Log.txt  "+log_file )#del
		os.system("adb pull  /mnt/sdcard/recordEvents.txt  "+recordEvents_file )#del
		os.system("adb pull  /mnt/sdcard/IsFinish.txt  "+finish_file )	
		os.system("adb pull  /mnt/sdcard/Serialize.txt "+ser_file)		
		
		# os.system("adb pull  /mnt/sdcard/currentATG.dot "+currentATG_file)
		# os.system("adb pull  /mnt/sdcard/GUIinfo.txt "+GUIinfo_file)
		fr2 = open(finish_file,'r')
		isFinish = fr2.readline()
		fr2.close()
		os.system("adb kill-server")
		time.sleep(3)		
		os.system("adb start-server")
		
		if(isFinish == 'finish' or isFinish == 'finish\n'): 
			print 'finished?  '+isFinish
			os.system("adb pull  /mnt/sdcard/Log.txt "+log_file)
			os.system("adb pull  /mnt/sdcard/recordEvents.txt "+recordEvents_file)
			os.system("adb pull  /mnt/sdcard/Serialize.txt "+ser_file)
			os.system("adb pull  /mnt/sdcard/currentATG.dot "+currentATG_file)
			os.system("adb pull  /mnt/sdcard/MainAct.txt "+mainact_file)
			break

	os.system("adb pull  /mnt/sdcard/Serialize.txt "+ser_file)
	
	print 'exploration finish!'
   

