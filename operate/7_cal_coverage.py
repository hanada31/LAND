#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys
from ApkOpearate import *
from Calculator import *
from common.constant import *


if __name__ == '__main__' :
	
	apk_name = sys.argv[1]
	apk_folder = Constant.apk_path + apk_name
	apk_path = apk_folder + "\\" + apk_name 
	apk_info_path = Constant.file_path+apk_name+"\\"
	
	apko = ApkOpearate(apk_name,apk_folder)  
	apko.get_methods()
	package = apko.getPackage()
	main = apko.getMain()
	
	instrument_log= apk_info_path + Constant.info_path+ Constant.instrument_log
	instrument_log_this = apk_info_path + Constant.info_path+ Constant.instrument_log_this
	instrument_log_this_target = apk_info_path + Constant.info_path+ Constant.instrument_log_this_target

	
	cal = Calculator(apk_name,instrument_log_this, package.replace('.','/'))
	cal.filterInstrumentLog(instrument_log,instrument_log_this)
	cal.filterTestInstrumentLog(instrument_log_this,instrument_log_this_target)
	
	cal.getCoverage()   