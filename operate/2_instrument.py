#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

from ApkOpearate import *
from common.constant import *

def makeDir(dir):
	if(not os.path.exists(dir)): 
		os.makedirs(dir)
		
if __name__ == '__main__' :

	apk_name = sys.argv[1]	
	apk_folder = Constant.apk_path + apk_name
	apko = ApkOpearate(apk_name,apk_folder) 
	
	infoDir = Constant.file_path + apk_name + "\\" + Constant.info_path
	makeDir(infoDir)
	
	#set target pkg (e.g., -P pkg_name)
	targetPkg = ""
	
	apko.addStake2(targetPkg)
	apko.addPermission()
	apko.rebuild_bat()
	apko.resign_bat()
	
	ins_info_file = Constant.file_path + apk_name + "\\" + Constant.ins_info_file
	shutil.copy(Constant.apk_path + apk_name + "\ins_info", ins_info_file)
	
	print apk_name + " instrument and build finish"
		

   
	
