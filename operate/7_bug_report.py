#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys
from ApkOpearate import *
from Calculator import *
from common.constant import *
import webbrowser


if __name__ == '__main__' :
	
	apk_name = sys.argv[1]
	apk_folder = Constant.apk_path + apk_name
	apk_path = apk_folder + "\\" + apk_name 
	apk_info_path = Constant.file_path+apk_name+"\\"
	logsDir = Constant.file_path + apk_name + "\\" + Constant.log_path
	infoDir = Constant.file_path + apk_name + "\\" + Constant.info_path
	bugreport = open(infoDir+"\\bugReport.txt","w")
	bugreport_html= open(infoDir+"\\bugReport.html","w")
	bugreport_html.write("<h1>LAND Crash Report of App " + apk_name +"</h1>")
	if(os.path.exists(logsDir)): 
		files = os.listdir(logsDir)
		
		for fname in files:
			f = open(logsDir+"\\"+fname,"r")
			lines = f.readlines()
			for line in lines:
				if  "E/AndroidRuntime" in line and "Caused by:" in line:
					ss = line.split()
					for item in ss:
						if  "Exception" in item:
							item = item.replace(":","")
							print fname+" "+item
							bugreport.write("in file "+logsDir+fname+" exists exception "+item+"\n")
							bugreport_html.write('In file <font color = "#0066CC" >'+logsDir+fname+' </font> exists exception  <font color = "#FF6666" >'+item+'</font> </br>\n')
	bugreport.close()
	bugreport_html.close()
	print "write bug report finish"
	webbrowser.open(infoDir+"\\bugReport.html")
