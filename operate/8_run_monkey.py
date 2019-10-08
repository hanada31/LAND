#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import os.path
import sys
import time
from ApkOpearate import *
from Calculator import *
from common.constant import *

if __name__ == '__main__' :

	
	apk_name = sys.argv[1]
	apk_robt_name = apk_name+"_Test"
	apk_test_name = apk_name+"_Test"
	
	apk_folder = Constant.apk_path + apk_name
	apk_robt_folder = Constant.apk_robt_path + apk_robt_name
	apk_test_folder = Constant.apk_test_path + apk_test_name

	apk_path = apk_folder + "\\" + apk_name 
	apk_robt_path = apk_robt_folder+ "\\" + apk_robt_name 
	apk_test_path = apk_test_folder+ "\\" + apk_test_name
	
	

	apko = ApkOpearate(apk_name,apk_folder)
	#apko.decompile_bat()
	#apko.get_methods()
	monkeyDir = Constant.file_path+apk_name+"\\Monkey"
	srcfile= monkeyDir+'\\'+Constant.instrument_log
	#instrument_log_this = Constant.instrument_log.split('.')[0]+"_"+apk_name+"_monkey.txt"   
	desfile= monkeyDir+"\\"+apk_name+'_'+Constant.instrument_log
	
	if(not os.path.exists(monkeyDir)): 
		os.makedirs(monkeyDir)
	print srcfile
	print desfile
	if os.path.exists(srcfile):
		os.remove(srcfile)  
	if os.path.exists(desfile):
		os.remove(desfile)  
		
	package = apko.getPackage()
	cal = Calculator(apk_name,desfile,package.replace('.','/'))

	apko.logTest(srcfile)
	time.sleep(1) 
	os.system("adb shell monkey -p "+package+" --throttle 5 -v "+sys.argv[2])
	
	os.system("adb kill-server")
	os.system("adb start-server")
	
	cal.filterInstrumentLog(srcfile,desfile)
	cal.getMonkeyCoverage()