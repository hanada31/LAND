##This class takes an apk path and name as input and change permission of it
#
# @author yjw@iscas
# @version 0.1
# @date Sep, 7th, 2015
from __future__ import division
import os,sys
import shutil
from common.constant import *
import webbrowser

## cmd command
## %1 self.__folder
## %2 self.__filename
class Calculator:
	## the constructor.	  
	def __init__(self,apk_name,desfile, myPackage) :
		## apk path
		self.__apk_name= apk_name
		## apk file name
		self.__instrument_log_this = desfile
		self.__myPackage = myPackage
		self.pkgDict = {}
		self.pkgNum=0
		self.pkgCovNum=0
		self.methodDict ={}
		self.methodNum=0
		self.methodCovNum=0
		self.classDict ={}
		self.classNum=0
		self.classCovNum=0
		self.resourceDict={}
		self.method_file = Constant.file_path+self.__apk_name+'\\'+Constant.method_file
		self.re_calculate_file = Constant.file_path+self.__apk_name+'\\'+Constant.re_calculate_file
		self.html = Constant.file_path+self.__apk_name+'\\'+Constant.re_calculate_file_html
		self.re_auto_file  = Constant.file_path+self.__apk_name+'\\'+Constant.re_auto_file
		self.coverDict={}
		self.pkgCovHtml={}
		self.clsCovHtml={}
		self.totalPkgCoverage=''
		self.totalClsCoverage=''
		self.totalMethodCoverage=''
	def getMonkeyCoverage(self):
		self.getMethodList()
		#self.printMethodList()
		self.calMethodCoverage()
		
		self.getClassList()
		#self.printClassList()
		self.calClassCoverage()
		
	def getDynoCoverage(self):
		oldprint = sys.stdout
		sys.stdout = open( 'dynoTest\\'+self.__apk_name+'\coverage.txt', 'w')
		self.getDynoMethodList()
		#self.printMethodList()
		self.calMethodCoverage()
		
		self.getDynoClassList()
		#self.printClassList()
		self.calClassCoverage()
		sys.stdout = oldprint
		
	def getCoverage(self):
		print('getCoverage')
		oldprint = sys.stdout
		sys.stdout = open( self.re_calculate_file, 'w')
		
		self.getPkgList()
		##self.printPkgList()
		self.calPkgCoverage()
		
		self.getClassList()
		##self.printClassList()
		self.calClassCoverage()
		
		self.getMethodList()
		##self.printMethodList()
		self.calMethodCoverage()
		#print self.coverDict
		self.calCoverageByPkg()
		self.calCoverageByCls()

		sys.stdout = oldprint	 
		
		self.writeHtml()
		
	def writeHtml(self):
		fw = open(self.html,'w')
		fw.write( '<html><body>')
		fw.write('<h1> LAND Coverage Report of App <b>' + self.__apk_name+'</b></h1>')
		
		fw.write('<b> <font color="#333333">'+ self.totalPkgCoverage +'</br>' )
		fw.write(self.totalClsCoverage +' </br>' )
		fw.write(self.totalMethodCoverage +'</b> </font></br>' )
		
		for pkg in self.coverDict.keys():
			fw.write('<hr style="height:10px;border:none;border-top:10px groove skyblue;" />')
			
			fw.write('<h2> <font color="#336699"> package name: ' + pkg[1:-1]+'</font></h2>')
			fw.write('<b> <font color="#333333">'  +self.pkgCovHtml[pkg] +'</b> <br> </font><br>' )
			for cls in self.coverDict[pkg].keys():
				fw.write('<hr style="height:1px;border:none;border-top:1px solid #555555;" />')
				
				fw.write('<h3>  <font color="#336699"> class name: ' + cls[1:-1].replace('/','.')+'</font></h3>')
				fw.write( '<b> <font color="#333333">' + self.clsCovHtml[cls] +'</b> </font><br> <br>' )

				for method in self.coverDict[pkg][cls].keys():
					if self.coverDict[pkg][cls][method] ==True:
						fw.write('<font color="green"> method name: ' + method+'</font> </br>')
					else:
						fw.write(' <font color="red"> method name: ' + method+'</font></br>')
				
			
			
		fw.write('</body></html>')
		fw.close()
		webbrowser.open(self.html)

	#modeling log	
	def getPkg(self, line):
		classA = line.strip('\r\n').split('--->')[0]
		ss = classA.split('/')
		pkg=''
		for i in range(len(ss)-1) :
			pkg+=ss[i]+'.'
		return pkg
		
	def getClass(self, line):		
		return line.strip('\r\n').split('--->')[0]
	
	def getPkgList(self):	  
		file = open(self.method_file)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				pkg = self.getPkg(line)
				if(pkg == ''):
					continue
				if pkg not in self.pkgDict.keys():
					self.pkgDict[pkg]=False
					self.coverDict[pkg]={}
		file.close()
		self.pkgNum = len(self.pkgDict)
		
	def getClassList(self):	  
		file = open(self.method_file)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				classA = self.getClass(line)
				pkg = self.getPkg(line)
				if pkg =='':
					continue
				if classA not in self.classDict.keys():
					self.classDict[classA]=False
					self.coverDict[pkg][classA] = {}
		file.close()
		self.classNum = len(self.classDict)
		
	def getMethodList(self):	  
		file = open(self.method_file)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				line = line.strip('\r\n')
				classA = self.getClass(line)
				pkg = self.getPkg(line)
				if pkg =='':
					continue
				self.methodDict[line]=False
				self.coverDict[pkg][classA][line]=False
		file.close()
		self.methodNum = len(self.methodDict)
		
	def printPkgList(self):
		for key in self.pkgDict:  
			print 'key=%s, value=%s' % (key, self.pkgDict[key])  
	def printClassList(self):		 
		for key in self.classDict:  
			print 'key=%s, value=%s' % (key, self.classDict[key])  
			
	def printMethodList(self):		 
		for key in self.methodDict:  
			print 'key=%s, value=%s' % (key, self.methodDict[key]) 

			
	def calPkgCoverage(self):
		file = open(self.__instrument_log_this)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				if '--->' in line:
					line = line.split(': ')[1].split('--->')[0]
				else:
					line = line.split('!')[0]
					
				ss = line.split('/')
				pkg=''
				for i in range(len(ss)-1) :
					pkg+=ss[i]+'.'
				if pkg in self.pkgDict.keys():
					if self.pkgDict[pkg] == False:
						self.pkgDict[pkg] = True
						self.pkgCovNum+=1
		file.close()
		res =  'App-Level  Package Coverage = '+ str(self.pkgCovNum) + '/' + str(self.pkgNum) +' = '+ str(1.0*self.pkgCovNum/self.pkgNum)+'\n'
		print res
		self.totalPkgCoverage =  res 
		
	def calClassCoverage(self):
		file = open(self.__instrument_log_this)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				if '--->' in line:
					line = line.split(': ')[1].split('--->')[0]
				else:
					line = line.split('!')[0]
				if line in self.classDict.keys():
					if self.classDict[line] == False:
						self.classDict[line] = True
						self.classCovNum+=1
		file.close()
		res =  'App-Level Class Coverage = '+ str(self.classCovNum) + '/' + str(self.classNum) +' = '+ str(1.0*self.classCovNum/self.classNum)+'\n'
		print res
		self.totalClsCoverage =  res 
		
	def calMethodCoverage(self):
		file = open(self.__instrument_log_this)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				if '--->' in line:
					line = line.split(': ')[1].strip('\r\n')
				else:
					line = line.strip('\r\n')
				if  self.methodDict.has_key(line):
					if self.methodDict[line] == False:
						self.methodDict[line] = True
						self.methodCovNum+=1
				classA = self.getClass(line)
				pkg = self.getPkg(line)
				if pkg =='':
					continue
				if pkg in self.coverDict and classA in self.coverDict[pkg] and line in self.coverDict[pkg][classA]:
					if self.coverDict[pkg][classA][line]==False:
						self.coverDict[pkg][classA][line]=True
		file.close()
		uncoverNum=0
		for s in self.methodDict.keys():
			if self.methodDict[s] == False:
				uncoverNum+=1
		# print 'sum ',self.methodNum,', uncovered ',uncoverNum
		res =  'App-Level Method Coverage = '+ str(self.methodCovNum) + '/' + str(self.methodNum) +' = '+ str(1.0*self.methodCovNum/self.methodNum)+'\n'
		print res
		self.totalMethodCoverage =  res 
		
	def calCoverageByPkg(self):
		for pkg in self.coverDict.keys():
			me_cover = 0;
			me_sum =0;
			cls_cover = 0;
			cls_sum = len(self.coverDict[pkg].keys())
			for cls in self.coverDict[pkg].keys():
				cls_flag = False
				for method in self.coverDict[pkg][cls].keys():
					me_sum+=1
					if self.coverDict[pkg][cls][method] ==True:
						me_cover+=1
						if(not cls_flag):
							cls_cover+=1
							cls_flag=True
			name = pkg[1:-1]
			print 'Package Name: ' +name
			cls_str =  'Packaget-Level Class Coverage = ' + str(cls_cover) + '/' + str(cls_sum) +' = '+ str(1.0*cls_cover/cls_sum)
			me_str =  'Packaget-Level Method Coverage = '+ str(me_cover) + '/' + str(me_sum) +' = '+str(1.0*me_cover/me_sum)+'\n'
			print cls_str
			print me_str
			self.pkgCovHtml[pkg] = cls_str +'</br>' +me_str 
			
		
	def calCoverageByCls(self):
		for pkg in self.coverDict.keys():
			for cls in self.coverDict[pkg].keys():
				me_cover = 0;
				me_sum =0;
				for method in self.coverDict[pkg][cls].keys():
					me_sum+=1
					if self.coverDict[pkg][cls][method] ==True:
						me_cover+=1
				name = cls[1:-1].replace('/','.')
				print 'Class Name: ' + name
				me_str =  'Class-Level Method Coverage  = '+ str(me_cover) + '/' + str(me_sum) +' = '+str(1.0*me_cover/me_sum)+'\n'
				print me_str
				self.clsCovHtml[cls] =  me_str 
				
	def generateReport(self):
		filename = 'coverage.html'
		f = open(filename, 'w')
		f.write('')
		
		f.close()
	
	def getDynoClassList(self):	  
		with open(self.method_file) as class_file :
			classes = class_file.readlines()
		for line in classes :
			#print line[1:]
			classA = line.strip('\r\n').split('--->')[0]
			if classA not in self.classDict.keys():
				self.classDict[classA]=False
		self.classNum = len(self.classDict)	
		
	def getDynoMethodList(self):	  
		with open(self.method_file) as method_file :
			methods = method_file.readlines()
		for line in methods :
			line =line.split('(')[0].replace('--->','!').strip('\r\n')
			self.methodDict[line]=False
		self.methodNum = len(methods)  
		
		
	def filterInstrumentLog(self, src,des):
		output_file = open(des, 'w')
		f = open(src)
		mySet = set([])
		lines = f.readlines()
		f.close()
		print len(lines)
		for line in lines:
			if Constant.ins_method in line or Constant.ins_key in line:
				if len(line) != 0:
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
		
		
if __name__ == '__main__' :
	pass