#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys
from ApkOpearate import *
from Calculator import *
from common.constant import *
import common.glvariable
import time
from  getScreenShot import *

# if __name__ == '__main__' :
# 	apk_name = sys.argv[1]
def getInfo(apk_name):
	apk_folder = Constant.apk_path + apk_name
	apk_path = apk_folder + "\\" + apk_name
	apk_info_path = Constant.file_path+apk_name+"\\"

	infoDir = Constant.file_path + apk_name + "\\" + Constant.info_path

	atgfile = infoDir+"currentATG.dot"
	print "pull atg, GUI info and ser"
	os.system("adb pull  /sdcard/currentATG.dot  "+atgfile)
	os.system("adb pull  /sdcard/GUIinfo.txt  "+infoDir+"\\GUIinfo.txt")
	os.system("adb pull  /sdcard/Serialize.txt  "+infoDir+"\\Serialize.txt")

	node = trans =0
	f = open(atgfile,"r")
	lines = f.readlines()
	f.close()
	for line in lines:
		if "style=filled" in line:
			node +=1
		elif " -> " in line:
			trans +=1

	modelfile = infoDir+"model.txt"
	f = open(modelfile,"w")
	f.write("node: "+str(node)+"\n")
	f.write("trans: "+str(trans)+"\n")
	f.close()
	getScreenShot(apk_name)
