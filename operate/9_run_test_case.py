#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import os.path
import threading
import sys
import time
from ApkOpearate import *
from Calculator import *
from common.constant import *
from Utils import *
from Utils import grantPermission
from Utils import writeEditTextInfo
import common.glvariable
import datetime

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
	
	#i = datetime.datetime.now()
	#timestamp = str(i.year)+str(i.month)+ str(i.day)+ str(i.hour)+ str(i.minute)

	apk_name = sys.argv[1]
	#n = sys.argv[2]
	myTest = Constant.test_cases
	# if n== 1:
		# myTest = Constant.test_cases #regular test
	# elif n== 2:
		# myTest = Constant.test_cases2 #record_and_replay test
	# elif n== 3:
		# myTest = Constant.test_cases3 #target directed test
	# elif n== 4:
		# myTest = Constant.test_cases4 #EditText test
		
	apk_folder = Constant.apk_path + apk_name
	apk_path = apk_folder + "\\" + apk_name 
	apk_info_path = Constant.file_path+apk_name+"\\"
	
	logsDir = Constant.file_path +apk_name+"\\"+Constant.log_path
	infoDir = Constant.file_path +apk_name+"\\" +Constant.info_path
	monkeyDir = Constant.file_path +apk_name+"\\" +Constant.monkey_path
	jimpleDir = Constant.file_path +apk_name+"\\" +Constant.jimple_path
	makeDir(logsDir)
	makeDir(infoDir)
	makeDir(monkeyDir)
	makeDir(jimpleDir)
	
	apk_robt_folder = Constant.apk_robt_path + apk_name+"_Test"
	apk_test_folder = Constant.apk_test_path + apk_name+"_Test"
	apk_robt_path = apk_robt_folder+ "\\" + apk_name+"_Test" 
	apk_test_path = apk_test_folder+ "\\" + apk_name+"_Test"
	removeDir(apk_robt_folder)
	removeDir(apk_test_folder)
	
	EditTextFile = apk_info_path + Constant.editText_values
	finish_file= apk_info_path + Constant.finish_file
	log_file= apk_info_path + Constant.log_file
	name_file= apk_info_path + Constant.name_file
	mainact_file= apk_info_path + Constant.mainact_file
	crash_file= apk_info_path + Constant.crash_file
	method_file= apk_info_path + Constant.method_file
	recordEvents_file = apk_info_path + Constant.recordEvents_file
	manifestStartFlagFile = apk_info_path + Constant.manifestStartFlagFile
	ser_file = apk_info_path + Constant.ser_file
	atg_file = apk_info_path + Constant.atg_file
	
	instrument_log= apk_info_path + Constant.info_path+ Constant.instrument_log
	instrument_log_this = apk_info_path + Constant.info_path+ Constant.instrument_log_this
	instrument_log_this_target = apk_info_path + Constant.info_path+ Constant.instrument_log_this_target
	
	re_auto_file= apk_info_path + Constant.re_auto_file
	re_stake_file= apk_info_path + Constant.re_stake_file
	re_calculate_file= apk_info_path + Constant.re_calculate_file
	
	

	#part1.2 write file about package and classname
	apko = ApkOpearate(apk_name, apk_folder)  
	apko.get_methods()
	
	acts = apko.getAct()
	package = apko.getPackage()#package name of app under testing
	main = apko.getMain()#main activity name of app under testing
	
	
	#generate test sequence through calling jar file
	#print "java -jar "+Constant.testGenerator+" "+ package+" "+main  +" " +apk_name
	#os.system("java -jar "+Constant.testGenerator+" "+ package+" "+main+" " +apk_name )
	
	#generate robotium DFS test apk file	
	apko3 = ApkOpearate(apk_name, apk_test_folder)
	apko3.createTestProject(package)
	apko3.buildApk()
	
	
	#uninstall and install test apk  
	print "uninstall and install"
	os.system("adb uninstall "+package+".test")
	os.system("adb install "+ apk_test_path+"_signed.apk")

	
	
		
	fr4 = open(Constant.java_path+myTest+".txt",'r')
	names = fr4.readlines()
	os.system("echo num "+ str(len(names)) )   
	idx = 0
	windowPackageName = getCurrentPackageName()
	for name in names:
		common.glvariable.isRunning = True
		t1 = threading.Thread(target=judgeIsOutCurrentApp, args=(apko,apk_name,package, windowPackageName))
		t1.setDaemon(True)
		t1.start()
		idx +=1
		apko.logCrash(logsDir+"testApk#"+name.strip() +".txt")
		time.sleep(2)
		os.system("echo "+name)	 
		command =  "adb shell am instrument -e class "+package+".test."+myTest+"#"+name.strip()+" -w "+package+".test/android.test.InstrumentationTestRunner"
		#print command
		os.system("echo "+command)			
		os.system(command)

		print "command finished"
		common.glvariable.isRunning = False  # stopping the thread that judges whether lock occurs
		# os.system("adb shell am force-stop "+package)
		os.system("adb kill-server")
		time.sleep(3)
		os.system("adb start-server")
	fr4.close()
	
	
	java_folder = Constant.file_path +apk_name+"\\"+Constant.java_path
	removeDir(java_folder)
	shutil.copytree(Constant.java_path, java_folder)   
