#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os, sys
from ApkOpearate import *
from common.constant import *
		
def writeNameFile(name_file):	
	package = apko.getPackage()
	acts = apko.getAct()
	main = apko.getMain()
	actNum= len(acts)+1

	f = open(name_file,'w')
	f.write("package:"+package+"\n")
	f.write("main:"+main+"\n")
	for act in acts:
		f.write("act:"+act+"\n")
	f.close()
	
def writeManifestFile(manifestStartFlagFile):	
	startFlags = apko.getFlag()
	print startFlags
	f1 = open(manifestStartFlagFile,'w')
	for (k, v) in startFlags.items():
		f1.write(k+" "+v+" \n")
	f1.close()

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

	InfoDir = Constant.file_path+apk_name+"\\"+ Constant.info_path
	print apk_folder
	if(os.path.exists(apk_folder)): 
		apko = ApkOpearate(apk_name,apk_folder)  	
		if(not os.path.exists(InfoDir)): 
			os.makedirs(InfoDir)
			
		apko.decompile_bat()
		print apk_name + " decompile finish"
		package = apko.getPackage()
		
		name_file = Constant.file_path+apk_name+"\\"+Constant.name_file
		removeFile(name_file)
		writeNameFile(name_file)
		
		manifestStartFlagFile = Constant.file_path+apk_name+"\\"+Constant.manifestStartFlagFile
		removeFile(manifestStartFlagFile)
		writeManifestFile(manifestStartFlagFile)
	else:
		print apk_name + " is not exist"
		