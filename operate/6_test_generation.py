#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys,time
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
	id = sys.argv[2]
	str = sys.argv[3]
	apk_folder = Constant.apk_path + apk_name
	apk_path = apk_folder + "\\" + apk_name 
	apk_info_path = Constant.file_path+apk_name+"\\"
	print apk_info_path
	apko = ApkOpearate(apk_name,apk_folder)  
	apko.get_methods()
	package = apko.getPackage()
	print package
	main = apko.getMain()
	
	print "java -jar "+Constant.testGenerator+" "+ package+" "+main  +" " +apk_name+" "+id+" "+str 
	os.system("java -jar "+Constant.testGenerator+" "+ package+" "+main+" " +apk_name +" "+id+" "+str )
	
	java_folder = Constant.file_path +apk_name+"\\"+Constant.java_path
	removeDir(java_folder)
	time.sleep(1)  
	shutil.copytree(Constant.java_path, java_folder)  
	

