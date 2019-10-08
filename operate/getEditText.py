
#!/usr/bin/python
# coding:utf8
import os,sys
from common.constant import *


EditTextList=[]
name2value_public_map={}
value2name_public_map={}
name2value_strings_map={}
jimple2Value= dict()
Layout2Act= dict()
def get_all_file(floder_path):
	file_list = []
	if floder_path is None:
		raise Exception("floder_path is None")
	for dirpath, dirnames, filenames in os.walk(floder_path):
		for name in filenames:
			file_list.append(dirpath + '\\' + name)
	x=2
	while os.path.exists(floder_path+"_classes"+str(x)):
		for dirpath, dirnames, filenames in os.walk(floder_path):
			for name in filenames:
				file_list.append(dirpath + '\\' + name)
		x+=1
	return file_list

def writeMapToFile(f, name, map, k, v):
	f.write("\n\n"+name+"\n")
	f.write("-----------------------------------------------------------------------\n")
	for d,x in map.items():
		f.write(k+":"+str(d)+","+v+":"+str(x)+"\n")  



def getValueOfName(path):
	file = open(path+"\\values\\public.xml")
	#<public type="layout" name="main" id="0x7f030000" />
	lines = file.readlines()
	file.close()
	for line in lines:
		if "name" in line and "id" in line:
			ss = line.strip().split()
			name=""
			val=""
			for item in ss:
				if "name" in item:
					name = item.split("\"")[1]
				if "id" in item:
					val = item.split("\"")[1]
			name2value_public_map[name] = val
			value2name_public_map[val]=name
			#print "1",val, name
				
	file = open(path+"\\values\\strings.xml")
	lines = file.readlines()
	file.close()
	#<string name="o1">Close SubActivity3</string>
	for line in lines:
		# ss = line.strip().split()
		name=""
		val=""
		# print line
		if "<string" in line:
			name = line.split(">")[0].split("\"")[1]
			val = line.split(">")[1].split("<")[0]
		if name !="":
			#print "2", name, val
			name2value_strings_map[name] = val

				
def getJimpleOfApk(dir,apk,jimpleFolder):
	os.system("java -cp libs\\soot-trunk.jar soot.Main -cp libs\\android.jar -allow-phantom-refs -src-prec apk -f jimple -d "+jimpleFolder+" -process-dir "+dir+"\\"+apk+".apk")
	
def getValueOfJimple(file_list):
	setView= "setContentView(int)>"
	for _file in file_list:
		file = open(_file)
		lines = file.readlines()
		flag=False
		n = len(lines)
		for i in range(n):
			line = lines[i].strip()
			if setView in line: 
				ss = line.split()
				#print line
				jimple = ss[1].split(":")[0].split("<")[-1]
				value =ss[-1].split("(")[-1].split(")")[0]	
				if value.isdigit():
					jimple2Value[jimple] = str(hex(int(value)))
					#print 3, jimple,jimple2Value[jimple]
				else:
					for j in range(i-1,max(0,i-10),-1):
						if value in lines[j]:
							nameofVal = lines[j].split(">")[0].split(" ")[-1]
							#print 3, _file,nameofVal
							xml = nameofVal+".xml"
							Layout2Act[xml] = jimple
							#print 4, xml,  jimple
def getActOfLayout():
	for jimple,val in jimple2Value.items():
		#print val, value2name_public_map[val]
		if  val in value2name_public_map :
			xml = value2name_public_map[val]+".xml"
			Layout2Act[xml] = jimple
			#print 4, xml,  jimple
			
def getEditText(file_list):
	for _file in file_list:
		file = open(_file)
		lines = file.readlines()
		n = len(lines)
		for i in range(n):
			line = lines[i].strip()
			textView = ""
			if ("<EditText " in line  or "<AutoCompleteTextView " in line or "<EditTextPreference" in line) :
				res="EditText, "
				#get Activity
				#print Layout2Act
				res +="xml:"+_file.split("\\")[-1]+", "
				xmlName = _file.split("\\")[-1]

				if xmlName in Layout2Act:
					res +="act:"+Layout2Act[xmlName]+", "
					#print "--",xmlName
				else:
					res +="act:cannot find corresponding activity, "
					#print "--",xmlName, " xml no act !!!\n"
					#continue
				#print line
				#get textView
				for j in range(i,max(0,i-10),-1):
					if "TextView" in lines[j]:
						#=res += "textView:"+lines[j] +", "
						items = lines[j].strip().split("android:")
						for item in items:
							item = "android:"+item
							if "text=" in item:
								if "@string" in item:
									text = item.split("\"")[1].split("/")[-1]
									if text in  name2value_strings_map:
										res += "textView_text:"+name2value_strings_map[text]+", "
									else:
										res += "textView_text:"+text +", "
								else:
									res += "textView_text:"+item.split("\"")[1] +", "
							elif "@id/" in item:
								res += "textView_id:"+item.split("\"")[1].split("/")[-1] +", "
						break
				edtline=line
				#print edtline
				
				#get whole edittext
				if  line[-2]!="/":
					for j in range(i+1,n):
						newline = lines[j].strip()
						edtline +=newline
						if "</EditText" in newline or "</AutoCompleteTextView" in line:
							i=j+1
							break
				#get attrbutes
				items = edtline.split("android:")
				name=""
				inputType=""
				digits=""
				text=""
				for item in items:
					item = "android:"+item
					if "android:id" in item:
						name = item.split("\"")[1].split("/")[-1]
						res += "id_name:"+name+", "
						res += "id_val:"+name2value_public_map[name]+", "
					if "android:inputType"in item: 
						inputType = item.split("\"")[1]
						res += "inputType:"+inputType+", "
					if "android:digits"in item: 
						digits = item.split("\"")[1]
						res += "digits:"+digits+", "
					if "android:text="in item: 
						text = item.split("\"")[1]
						res += "text:"+text+", "	
					if "android:hint="in item: 
						if "@string" in item:
							hint = item.split("\"")[1].split("/")[-1]
							if hint in  name2value_strings_map:
								res += "hint:"+name2value_strings_map[hint]+", "
							else:
								res += "hint:"+hint +", "
						else:
							res += "textView_text:"+item.split("\"")[1] +", "
									
				#get values		
				valueNum=1
				values=""
				#values = "value:null, "
				if text !="":
					values += "value:"+text+","
					valueNum+=1
				if digits !="":
					values += "value:"+digits+", "
					valueNum+=1
				else:
					if "number" in inputType:
						values += "value:123456, "
					else:
						values += "value:*myXYZ123, "
					valueNum+=1
				#res += "valueNum:"+str(valueNum)+", "
				res += values
				EditTextList.append(edtline+"\n\n"+res)		
				
def analysis(apk):
	apkBaseDir= "Apk\\"+apk+"\\"+apk
	smaliFolder = apkBaseDir+"\\smali"
	resFolder= apkBaseDir+ "\\res"
	jimpleFolder=Constant.file_path+apk+"\\"+Constant.jimple_path
	infoFolder=Constant.file_path+apk+"\\"+Constant.info_path
	if(not os.path.exists(jimpleFolder)): 
		os.makedirs(jimpleFolder)
	if(not os.path.exists(infoFolder)): 
		os.makedirs(infoFolder)
		
	smaliFileList=get_all_file(smaliFolder)
	resFileList=get_all_file(resFolder)
	jimpleFileList=get_all_file(jimpleFolder)
	
	outFile = open(Constant.file_path+apk+"\\"+Constant.EditText_File,"w")
	
	#act-xml
	if len(jimpleFileList)==0:
		getJimpleOfApk("Apk\\"+apk,apk,jimpleFolder)
	getValueOfJimple(jimpleFileList)
	
	getValueOfName(resFolder)
	getActOfLayout()
	# for lay, act in Layout2Act.items():
		# outFile.write("Layout "+str(lay)+", Activity "+str(act)+"\n") 
	# outFile.write('\n')
	getEditText(resFileList)
	for line in EditTextList:
		ss= line.split(",")
		for item in ss:	
			outFile.write(item+"\n")
		outFile.write("----------------------\n")
	outFile.close()
				
				
if __name__ == '__main__' :
	
	apk= sys.argv[1]
	analysis(apk)

	