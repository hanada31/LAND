##This class takes an apk path and name as input and change permission of it
#
# @author yjw@iscas
# @version 0.1
# @date Sep, 7th, 2015

import os,sys
import shutil
from common.constant import *
from androguard.core.androgen import AndroguardS
import AddStake

## cmd command
## %1 self.__folder
## %2 self.__filename
class ApkOpearate:
	## the constructor.	  
	def __init__(self,apk_name, folder) :
		self.__folder = folder
		self.__filename = folder.split('\\')[-1]
		self.__apk_name = apk_name
		self.__toolpath = Constant.tool_path 
		self.__methods =[]
		self.apk_name = folder.split
		self.ins_info_file = Constant.file_path +self.__apk_name +"\\"+Constant.ins_info_file
		self.method_file = Constant.file_path+self.__apk_name+"\\"+Constant.method_file
		self.name_file= Constant.file_path+self.__apk_name+"\\"+ Constant.name_file
		
		self.profile = Constant.profile_path +self.__apk_name+"\\"+ Constant.profile
		if not os.path.exists(self.profile):	
			self.profile = Constant.profile_path + Constant.profile
		
	#com/ucas/test 
	def getfolder(self):
		return self.getPackage().replace('.','\\')
		
	#com.ucas.test	   
	def getPackage(self):
		if os.path.exists(self.__folder+'\\'+self.__filename+'\\AndroidManifest.xml'):
			f = open(self.__folder+'\\'+self.__filename+'\\AndroidManifest.xml','r')
			lines = f.readlines()
			f.close()
			for line in lines:
				if "package" in line:
					attrs=line.split(' ')
					for attr in attrs:
						if "package" in attr:
							ss=attr.split('"')
							return ss[-2].strip(' ')	  
		elif os.path.exists(self.name_file):
			return self.getPackageFromFile()
		else:
			return ' '
	
	#get manifestStartFlagFile
	def getFlag(self):
		dict={}
		if os.path.exists(self.__folder+'\\'+self.__filename+'\\AndroidManifest.xml'):
			f = open(self.__folder+'\\'+self.__filename+'\\AndroidManifest.xml','r')
			lines = f.readlines()
			f.close()
			
			for line in lines:
				if "android:launchMode" in line:
					attrs=line.split(' ')
					activity=None
					launchMode=None
					for attr in attrs:
						if "android:launchMode" in attr:
							ss= attr.split('"')
							launchMode =ss[-2].strip(' ')
						if "android:name" in attr:
							ss= attr.split('"')
							activity =ss[-2].strip(' ')
							if activity[0]=='.':
								activity = self.getPackage()+ activity
						if activity!=None and launchMode!=None:
							dict[activity] = launchMode
							break
		return dict
		
		
		
	def getPackageFromFile(self):
		f = open(self.name_file,'r')
		line = f.readline()
		package = line.split(':')[1].strip('\n')
		return package
		
	def getMain(self): 
		if os.path.exists(self.__folder+'\\'+self.__filename+'\\AndroidManifest.xml'):
			f = open(self.__folder+'\\'+self.__filename+'\\AndroidManifest.xml','r')
			lines = f.readlines()
			f.close()
			find = False
			for i in range(1,len(lines)+1):
				line =lines[len(lines)-i]
				if "android.intent.action.MAIN" in line:
					find = True
					continue
				if find == True:
					if "activity" in line:
						attrs=line.split(' ')
						for attr in attrs:
							if "android:name" in attr:
								ss= attr.split('"')
								main =ss[-2].strip(' ')
								if main[0]=='.':
									main = self.getPackage()+ main
								return main
		elif os.path.exists(self.name_file):
			return self.getMainFromFile()
		else:
			return ' '   
			
	def getMainFromFile(self):
		f = open(self.name_file,'r')
		line = f.readline()
		line = f.readline()
		main = line.split(':')[1].strip('\n')
		if main[0]=='.':
			main = self.getPackage()+ main
		return main	  
					
	def getAct(self): 
		acts=[]
		if os.path.exists(self.__folder+'\\'+self.__filename+'\\AndroidManifest.xml'):
			f = open(self.__folder+'\\'+self.__filename+'\\AndroidManifest.xml','r')
			lines = f.readlines()
			f.close()
			for line in lines:
				if "activity" in line:
					attrs=line.split(' ')
					for attr in attrs:
						if "android:name" in attr:
							ss= attr.split('"')
							act = ss[-2].strip(' ')
							if act[0]=='.':
								act = self.getPackage()+ act
							if self.getMain() != act:
								acts.append(act)
			
			return acts	
			
		elif os.path.exists(self.name_file):
			return self.getActFromFile()
		else:
			return ' '   
			
	def getActFromFile(self):
		acts=[]
		f = open(self.name_file,'r')
		line = f.readline()
		line = f.readline()
		while(True):
			line = f.readline()
			if not line:
				break
			act = line.split(':')[1].strip('\n')
			if act[0]=='.':
				act = self.getPackage()+ act
			acts.append(act)
		return acts	  
		
		## get all methods of apk
	def get_methods2(self) :
		## parse the apk file
		a = AndroguardS(self.__folder +"\\"+ self.__filename + '.apk')
		for method in a.get_methods() :
			class_name = method.get_class_name()
			method_name = method.get_name()
			## filter useless file
			if class_name.find('Landroid')==-1 and class_name.find('BuildConfig',0)==-1 and class_name.find('R$',0)==-1 and class_name.find('R;',0)==-1 and method_name.find('<clinit>',0)==-1:
				if self.getfolder().replace('\\','/') in class_name:
					method = '%s--->%s%s\n' %(class_name, method.get_name(), method.get_descriptor())
					self.__methods.append(method.replace(' ',''))	
				## record all methods
				
		with open(Constant.info_path+self.__filename+"\\"+Constant.method_file, 'w') as methods_write :
			for m in self.__methods:
				methods_write.write(m)
				
	def get_methods(self) :   
		methods= set()
		f = open(self.ins_info_file)
		lines = f.readlines()
		f.close()
		for line in lines:
			methods.add(line)
		self.__methods = list(methods)
		
		with open(self.method_file, 'w') as methods_write :
			for m in self.__methods:
				methods_write.write(m)
  
	def addSdPermit(self):
		flag = False
		f = open(self.__folder+'\\'+self.__filename+'\AndroidManifest.xml','r')
		lines = f.readlines()
		f.close()
		for line in lines:
			if"WRITE_EXTERNAL_STORAGE" in line :
				flag = True
		if(flag==False):
			f = open(self.__folder+'\\'+self.__filename+'\AndroidManifest.xml','w')
			for line in lines:
				f.write(line)
				if "</application>" in line:
					f.write('\t'+Constant.sdcard_permit+'\n')
			f.close()
			
	def addStackPermit(self):
		flag = False
		f = open(self.__folder+'\\'+self.__filename+'\AndroidManifest.xml','r')
		lines = f.readlines()
		f.close()
		for line in lines:
			if"GET_TASKS" in line :
				flag = True
		if(flag==False):
			f = open(self.__folder+'\\'+self.__filename+'\AndroidManifest.xml','w')
			for line in lines:
				f.write(line)
				if "</application>" in line:
					f.write('\t'+Constant.stack_permit+'\n')
			f.close()
			
	def addLogPermit(self):
		flag = False
		f = open(self.__folder+'\\'+self.__filename+'\AndroidManifest.xml','r')
		lines = f.readlines()
		f.close()
		for line in lines:
			if"READ_LOGS" in line :
				flag = True
		if(flag==False):
			f = open(self.__folder+'\\'+self.__filename+'\AndroidManifest.xml','w')
			for line in lines:
				f.write(line)
				if "</application>" in line:
					f.write('\t'+Constant.log_permit+'\n')	 
			f.close()	 

			
	def updateManifest(self,apk_package):
		f = open(self.__folder+'\AndroidManifest.xml','r')
		lines = f.readlines()
		f.close()

		f = open(self.__folder+'\AndroidManifest.xml','w')
		for line in lines:
			if "package=" in line :
				f.write('\tpackage="'+apk_package+'.test"\n')
			elif "targetPackage" in line :
				f.write('\t\tandroid:targetPackage="'+apk_package+'" />\n')
			else:
				f.write(line)
		f.close()	 
		
	def createRobotProject(self, apk_package):
		shutil.copytree(Constant.apk_robt_path+Constant.sampleRobotProject, self.__folder)  
		folder = self.__folder +'\src'
		dirs = apk_package.split('.')
		dirs.append('test')
		for dir in dirs:
			folder = folder + '\\' + dir
			os.mkdir(folder)
		self.cpPrepareFile(self.__folder +'\src\\'+Constant.bfs_preparefile , folder+"\\"+Constant.bfs_preparefile)
		self.cpTestFile(self.__folder +'\src\\'+Constant.bfs_testfile, folder+"\\"+Constant.bfs_testfile)	
		self.updateManifest(apk_package)
		
	def cpPrepareFile(self, source, desnation):
		f = open(source+".java",'r')
		lines = f.readlines()
		f.close()
		main = self.getMain()
		f1 = open(desnation+".java",'w')
		for line in lines:
			if "packageName" in line :
				line = 'package ' +self.getPackage()+".test;"
			if "mainClassName" in line:
				line = '\tprivate static final String LAUNCHER_ACTIVITY_FULL_CLASSNAME = "' + main + '";'
			f1.write(line)
		f1.close()	 
		os.remove(source+".java")
		
	def getSleepTime(self):
		sleeptime=""
		fr1 = open(self.profile,'r')
		lines = fr1.readlines()
		for line in lines:
			if "sleeptime" in line:
				sleeptime = line.split(':')[1].strip('\n')
				break
		fr1.close()	
		return sleeptime
		
	def cpTestFile(self, source, desnation):
		f = open(source+".java",'r')
		lines = f.readlines()
		f.close()
		main = self.getMain()
		f1 = open(desnation+".java",'w')
		for line in lines:
			if "packageName" in line :
				line = 'package ' +self.getPackage()+".test;"
			elif "mainClassName" in line:
				line = '\tprivate static final String LAUNCHER_ACTIVITY_FULL_CLASSNAME = "' + main + '";'
			elif "sleeptime" in line:
				line = "\t\tfor(int i = 0;i < "+self.getSleepTime()+"; i++){"
			f1.write(line)
		f1.close()	 
		os.remove(source+".java")
		
	def createTestProject(self, apk_package):
		shutil.copytree(Constant.apk_test_path+Constant.sampleTestProject,self.__folder)  
		folder = self.__folder +'\src'
		dirs = apk_package.split('.')
		dirs.append('test')
		for dir in dirs: 
			folder = folder + '\\' + dir
			print (folder)
			os.mkdir(folder)
		if os.path.exists(Constant.java_path+Constant.sequence_java):	
			shutil.copy(Constant.java_path+Constant.sequence_java , folder+"\\"+Constant.sequence_java) 
		if os.path.exists(Constant.java_path+Constant.sequence_java2):				
			shutil.copy(Constant.java_path+Constant.sequence_java2 , folder+"\\"+Constant.sequence_java2)   
		if os.path.exists(Constant.java_path+Constant.sequence_java3):		
			shutil.copy(Constant.java_path+Constant.sequence_java3 , folder+"\\"+Constant.sequence_java3)	  
		if os.path.exists(Constant.java_path+Constant.sequence_java4):		
			shutil.copy(Constant.java_path+Constant.sequence_java4 , folder+"\\"+Constant.sequence_java4) 
		self.updateManifest(apk_package)	 
		
	def addPermission(self):
		self.addSdPermit()
		self.addStackPermit()
		self.addLogPermit()
		
	def addStake(self):
		#apk = AddStake.AddStake("./Apk/" + apk_name + "/", apk_name)
		apk = AddStake.AddStake(self.__folder+"/", self.__filename)
		apk.get_methods()
		apk.add_stake()   
	   
	def addStake2(self, targetPkg):	  
		command ="java -jar "+Constant.InsDal+" -f " + self.__folder+"\\"+self.__filename+".apk -k " + Constant.target_file+"  -i -m -p " + targetPkg
		#-v??
		os.system(command) 
		print command	  
		
		shutil.copy(self.__folder+"\ins_info",self.ins_info_file)  
		self.get_methods()
		
	def buildApk(self):
		self.build_bat()
		self.build_bat2()
	
	def buildApkNew(self):
		self.build_bat3()
		self.build_bat4() 
		
	def logTest(self,filename):
		self.log_bat(filename)   
	def logCrash(self,filename):
		self.crash_bat(filename)	  
	def stopAPP(self,pkg):
		self.stop_bat(pkg)	
	
	def decompile_bat(self):
		if self.cmd( self.__toolpath+"ApkDecompile.bat ", 'Decompile','') == -1: sys.exit()
	def rebuild_bat(self):
		if self.cmd( self.__toolpath+"ApkRebuild.bat ", 'Rebuild','') == -1: sys.exit()   
	def resign_bat(self):
		if self.cmd(self.__toolpath+"ApkSign.bat ", 'Sign Apk','') == -1:sys.exit()
	def build_bat(self):
		if self.cmd(self.__toolpath+"buildApk.bat ", 'Build Apk','') == -1:sys.exit()
	def build_bat2(self):
		if self.cmd(self.__toolpath+"buildApk2.bat ", 'Build Apk','') == -1:sys.exit()	  
	def build_bat3(self):
		if self.cmd(self.__toolpath+"buildApk3.bat ", 'Build Apk','') == -1:sys.exit()   
	def build_bat4(self):
		if self.cmd(self.__toolpath+"buildApk4.bat ", 'Build Apk','') == -1:sys.exit()   
	def log_bat(self,filename):
		if self.cmd( self.__toolpath+"logTest.bat ", 'LogTest',filename) == -1: sys.exit()	 
	def crash_bat(self,filename):
		if self.cmd( self.__toolpath+"logCrash.bat ", 'logCrash',filename) == -1: sys.exit()	 
	def stop_bat(self, pkg):
		if self.cmd(self.__toolpath + "stopApp.bat ", 'stopApp', pkg) == -1: sys.exit()
	
	def cmd(self, cmd_str, msg, other):
		if 0 == os.system(cmd_str +self.__folder+" " +self.__filename+" "+self.getfolder()+" " +other):
			print '%s success!\n' %(msg)
			return 0
		else:
			print '%s failed!\n' %(msg)
			return -1		
			
	def clearFolder(self, folder):
		if folder!='':
			shutil.rmtree(self.__folder+"\\"+folder)
		else:
			shutil.rmtree(self.__folder)
			
	def clearFile(self, file):
		os.remove(self.__folder+"\\"+file)

	def readFile(self, filename):
		fr = open(filename,'r')	
		return fr.readlines() 

		
if __name__ == '__main__' :
	pass