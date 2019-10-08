#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys
from ApkOpearate import *
from Calculator import *
from common.constant import *
import common.glvariable
import time
import math

def makeDir(dir):
	if(not os.path.exists(dir)):
		os.makedirs(dir)
		

# if __name__ == '__main__' :
def getScreenShot(apk_name):
	# apk_name = sys.argv[1]
	apk_folder = Constant.apk_path + apk_name
	apk_path = apk_folder + "\\" + apk_name
	apk_info_path = Constant.file_path+apk_name+"\\"
	screenshot_file = apk_info_path + Constant.screenshot_file+str(math.ceil(time.time()))
	screenshot_Dir = Constant.file_path + apk_name + "\\" + Constant.screenshot_path
	makeDir(screenshot_Dir)

	print "pull screenshots"
	
	os.system("adb pull  /sdcard/states.txt  "+screenshot_file)
	os.system("adb shell rm /sdcard/states.txt")

	if os.path.exists(screenshot_file):
		f = open(screenshot_file,"r")
		lines = f.readlines()
		for line in lines:
			pic = line.strip()+".png"
			if not os.path.exists(screenshot_Dir+"\\"+pic):
				os.system("adb pull  /sdcard/"+pic +" " +screenshot_Dir+"\\"+pic)
				os.system("adb shell rm /sdcard/"+pic)