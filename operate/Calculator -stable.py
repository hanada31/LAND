##This class takes an apk path and name as input and change permission of it
#
# @author yjw@iscas
# @version 0.1
# @date Sep, 7th, 2015
from __future__ import division
import os,sys
import shutil
from common.constant import *


## cmd command
## %1 self.__folder
## %2 self.__filename
class Calculator:
	## the constructor.	  
	def __init__(self,apk_name,instrument_log_this, myPackage) :
		## apk path
		self.__apk_name= apk_name
		## apk file name
		self.__instrument_log_this = instrument_log_this
		self.__myPackage = myPackage
		self.methodDict ={}
		self.methodNum=0
		self.methodCovNum=0
		self.classDict ={}
		self.classNum=0
		self.classCovNum=0
		self.resourceDict={}

		
		
	def getMonkeyCoverage(self):
		self.getMethodList()
		#self.printMethodList()
		self.calMethodCoverage()
		
		self.getClassList()
		#self.printClassList()
		self.calClassCoverage()
		
	def getDynoCoverage(self):
		oldprint = sys.stdout
		sys.stdout = open( "dynoTest\\"+self.__apk_name+"\coverage.txt", "w")
		self.getDynoMethodList()
		#self.printMethodList()
		self.calMethodCoverage()
		
		self.getDynoClassList()
		#self.printClassList()
		self.calClassCoverage()
		sys.stdout = oldprint
		
	def getCoverage(self):
		print("getCoverage")
		oldprint = sys.stdout
		sys.stdout = open( Constant.re_calculate_file, "w")
		
		self.getMethodList()
		##self.printMethodList()
		self.calMethodCoverage()
		
		self.getClassList()
		##self.printClassList()
		self.calClassCoverage()
		sys.stdout = oldprint	 
	#modeling log	

	def filterInstrumentLog(self, src,des):
		output_file = open(des, 'w')
		f = open(src)
		mySet = set([])
		lines = f.readlines()
		f.close()
		print len(lines)
		for line in lines:
			if Constant.ins_method in line or Constant.ins_key in line:
				if len(line) != 0 and self.__myPackage in line:
					newline =line.split(' ')[-1] 
					if(newline not in mySet):
						mySet.add(newline)
						output_file.write(line.replace('\r\n','\n'))
		
		output_file.close()
	#test target log

	def filterTestInstrumentLog(self, src, des):
		output_file = open(des, 'w')
		output_file.write(des+'\n')
		file = open(src)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				if line.find(Constant.ins_key)>= 0:
					if len(line) != 0:
						output_file.write(line.replace('\r\n','\n'))
		file.close()
		output_file.close()
		
	def getMethodList(self):	  
		file = open(Constant.method_file)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				line = line.strip('\r\n')
				self.methodDict[line.strip('\r\n')]=False
		file.close()
		self.methodNum = len(self.methodDict)
		print ("num " +str(self.methodNum))
		
	def getDynoMethodList(self):	  
		with open(Constant.method_file) as method_file :
			methods = method_file.readlines()
		for line in methods :
			line =line.split('(')[0].replace('--->','!').strip('\r\n')
			self.methodDict[line]=False
		self.methodNum = len(methods)  
		
	def printMethodList(self):		 
		for key in self.methodDict:  
			print "key=%s, value=%s" % (key, self.methodDict[key])  
				 
	def calMethodCoverage(self):
		file = open(self.__instrument_log_this)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				if "--->" in line:
					line = line.split(': ')[1].strip('\r\n')
				else:
					line = line.strip('\r\n')
				if line in self.methodDict.keys():
					if self.methodDict[line] == False:
						self.methodDict[line] = True
						self.methodCovNum+=1
		file.close()
		
		uncoverNum=0
		for s in self.methodDict.keys():
			if self.methodDict[s] == False:
				print s
				uncoverNum+=1
		print "sum ",self.methodNum,", uncovered ",uncoverNum

		print  "methodCovNum: "+str(self.methodCovNum) 
		print  "methodNum: "+str(self.methodNum)	  
		print "MethodCoverage="+str(1.0*self.methodCovNum/self.methodNum)
		 
	def getClassList(self):	  
		file = open(Constant.method_file)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				classA = line.strip('\r\n').split('--->')[0]
				if classA not in self.classDict.keys():
					self.classDict[classA]=False
		file.close()
		self.classNum = len(self.classDict)
		
	def getDynoClassList(self):	  
		with open(Constant.method_file) as class_file :
			classes = class_file.readlines()
		for line in classes :
			#print line[1:]
			classA = line.strip('\r\n').split('--->')[0]
			if classA not in self.classDict.keys():
				self.classDict[classA]=False
		self.classNum = len(self.classDict)
 
	def printClassList(self):		 
		for key in self.classDict:  
			print "key=%s, value=%s" % (key, self.classDict[key])  

	def calClassCoverage(self):
		file = open(self.__instrument_log_this)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				if "--->" in line:
					line = line.split(': ')[1].split('--->')[0]
				else:
					line = line.split('!')[0]
				if line in self.classDict.keys():
					if self.classDict[line] == False:
						self.classDict[line] = True
						self.classCovNum+=1
		file.close()
		print  "classCovNum: "+str(self.classCovNum)  
		print  "classNum: "+str(self.classNum)			   
		print "ClassCoverage="+str(1.0*self.classCovNum/self.classNum)
		
	def getSuccRatio(self, start, end):
		with open(Constant.re_auto_file) as resultfile :
			lines = resultfile.readlines()
		state = False
		T=0
		S=0
		for line in lines :
			if "adb shell am instrument" in line and start in line:
				if state == False:
					state = True
				S+=1
			if state == True:
				if "OK (1 test)" in line:
					T += 1
			if "adb shell am instrument" in line and end  in line:
				if S > 0:
					print start ,"T=",T," S=",S,"sucess ratio=", T/S 
				return
		if S > 0:
			print start ,"T=",T," S=",S,"sucess ratio=", T/S  
			# read resource table
	
	def getResourceList(self):
		if os.path.exists(Constant.target_file):
			resource_file = open(Constant.target_file)
			self.resource_str_list = []
			try:
				#print 'resource list'
				for each_line in resource_file:
					# Scan all smali file to match the string picked in report file
					resource_str = each_line.strip("\n").strip()
					self.resourceDict[resource_str]=None
			finally:
				resource_file.close()
		else:
			print("--> open resource_file fail")
		
	def checkLeak(self, file):
		result= file+'\n'
		print file
		with open(file) as logfile :
			lines = logfile.readlines() 
		for logLine in lines:
			for resource in self.resourceDict.keys():
				if resource.split(':')[0] in logLine:
					self.resourceDict[resource] = True
					break
				elif resource.split(':')[1] in logLine:
					self.resourceDict[resource] = False
					break
		for resource in self.resourceDict.keys():
			if self.resourceDict[resource]!=None:
				print resource, self.resourceDict[resource]
				result += resource +" : "+str(self.resourceDict[resource])+"\n"
		return result+'\n'
		
if __name__ == '__main__' :
	pass