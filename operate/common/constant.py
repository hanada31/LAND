#coding=utf-8

import os
import re

## This package contains all the constant variables
# @package common.constant

## This class stores all the constant variables
# @author wty@iscas
# @version 0.1
# @date Dec 23rd, 2014

class Constant :
	## the callback methods of activity lifecycle
	activity_lifecycle = ['onCreate', 'onStart', 'onResume', 'onPause', \
						  'onStop', 'onRestart', 'onDestroy']
	## the callback methods of service lifecycle
	service_lifecycle = ['onCreate', 'onStartCommand', 'onBind', 'onUnbind', \
						  'onRebind', 'onDestroy']
	## the list of entry method names in Android.
	entry_str_list = ['onClick', 'onLongClick', 'onTouch', \
	'onTouchEvent', 'onTrackballEvent','onKey', 'onKeyDown', 'onKeyUp', \
	'onFocusChange', 'onCheckedChanged', 'onItemSelected', 'onBackPressed', \
	'onScroll', 'onShowPress', 'onSingleTapUp', 'handleMessage', \
	'surfaceCreated', 'surfaceChanged', 'onItemClick']
	## the list of set listeners method names in Android
	set_listener_dict = {'setOnClickListener': 'onClick', \
						 'setOnCheckedChangeListener': 'onCheckedChanged', \
						 'setOnItemSelectedListener': 'onItemSelected', \
						 'setOnItemClickListener': 'onItemClick'}
	## the list of exit method names in Android.
	exit_str_list = ['onPause', 'onStop', 'onDestory', 'surfaceDestroyed']
	## the list of entry method names, excluding the names starting with 'on'
	entry_method_str = ['<init>(', 'run(', 'surfaceCreated', 'surfaceChanged']
	## the list of invoke instructions
	invoke_ins = ["invoke-virtual","invoke-virtual/range", \
	"invoke-direct","invoke-direct/range","invoke-static",	\
	"invoke-static/range", "invoke-super"]
	## the list of activity start instructions
	activity_start_ins = ['startActivity(Landroid/content/Intent;)V', \
	'startActivityForResult(Landroid/content/Intent; I)V']
	## the list of service start instructions
	service_start_ins = [
	'startService(Landroid/content/Intent;)Landroid/content/ComponentName;', \
	'bindService(Landroid/content/Intent; Landroid/content/ServiceConnection; I)Z']
	## the list of tab start instructions
	tab_start_ins = [
	'setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;']
	## the list of anynctask instructions
	async_task_ins = ['execute([Ljava/lang/Object;)Landroid/os/AsyncTask;']
	## the list of handler instructions
	handler_ins = ['Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable; J)Z']
	## the list of handlemessage instructions
	handle_message_ins = 'handleMessage(Landroid/os/Message;)V'
	## on str
	on_str = 'on'
	## handle message str
	handle_message_str = 'handleMessage'
	## activity str
	activity_str = 'Activity'
	## service str
	service_str = 'Service'
	## async task str
	asynctask_str = 'AsyncTask'
	## android support str
	android_support_str = 'Landroid/support'
	## comm call str
	comm_call_str = 'CommCall'
	## activity call str
	activity_call_str = 'ActivityCall'
	## service call str
	service_call_str = 'ServiceCall'
	## async task call str
	async_task_call_str = 'AsyncTaskCall'
	## handler call str
	handler_call_str = 'HandlerCall'
	## source str
	source_str = 'Source'
	## free str
	free_str = 'Free'
	## instruction split str
	ins_split_str = ', '
	## left parenthesis str
	left_parenthesis_str = '('
	## class to method str
	class_to_method_str = ';->'
	## class to method str 2
	class_to_method_str2 = '->'
	## oncreate str
	oncreate_str = 'onCreate('
	## const class str
	const_class_str = 'const-class'
	## const string str
	const_string_str = 'const-string'
	## intent init str
	intent_init_str = 'Landroid/content/Intent;-><init>(Landroid/content/Context; Ljava/lang/Class;)V'
	## intent setclassname str
	intent_setclassname_str = 'Landroid/content/Intent;->setClassName(Ljava/lang/String; Ljava/lang/String;)Landroid/content/Intent;'
	## set component str
	set_component_str = 'Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;'
	## component name init str
	component_name_init_str = 'Landroid/content/ComponentName;-><init>(Ljava/lang/String; Ljava/lang/String;)V'
	## intent setclass str
	intent_setclass_str = 'Landroid/content/Intent;->setClass(Landroid/content/Context; Ljava/lang/Class;)Landroid/content/Intent;'
	## point str
	point_str = '.'
	## L str
	l_str = 'L'
	## slash str
	slash_str = '/'
	## quote str
	quote_str = '\''
	## empty str
	empty_str = ''
	## semicolon str
	semicolon_str = ';'
	## under line str
	underline_str = '_'
	## do in background instruction str
	do_in_background_ins_str = 'doInBackground([Ljava/lang/Object;)Ljava/lang/Object;'
	## run instruction str
	run_ins_str = 'run()V'
	## nexts str
	nexts_str = 'nexts:'
	## manifest str
	manifest_str = 'manifest'
	## package str
	package_str = 'package'
	## activity str2
	activity_str2 = 'activity'
	## category str
	category_str = 'category'
	## android name str
	android_name_str = 'android:name'
	## launcher str
	launcher_str = 'android.intent.category.LAUNCHER'
	## bug report str
	bug_report_str = os.path.sep + 'bug_report*'
	## rm str
	rm_str = 'rm -f '
	## cat str
	cat_str = 'cat '
	## redirect str
	redirect_str = ' > '
	## android 
	android_package = ['Landroid/support']
	## java package
	java_package = ['Ljava/util', 'Ljava/lang', 'Ljava/io', 'Ljavax/crypto']
	## android:id
	android_id_str = 'android:id'
	## public str
	public_str = 'public'
	## type str
	type_str = 'type'
	## string str
	string_str = 'string'
	
	#2015 09 11 edit
	##path
	#xml_path
	xml_path="xml\\"
	#java_path
	java_path="java\\"
	## file_path
	file_path = "files\\"
	
	info_path="Infos\\"
	log_path="Logs\\"
	monkey_path= "Monkey\\"
	jimple_path =  "Jimples\\"
	screenshot_path = "Screenshots"
	apk_path="Apk\\"
	apk_robt_path="ApkRobt\\"
	apk_test_path="ApkTest\\"
	tool_path = 'operate\\tool\\'
	#permission file
	permission_file = "permissions.txt"
	time_file='time.txt'
	#ins_info_file
	ins_info_file = info_path+"ins_info.txt"
	#log file
	log_file = info_path+"Log.txt"
	#EditText_File
	EditText_File = info_path+"EditText_Info.txt"
	#result file
	result_file = info_path+"result.txt"
	#finish file
	finish_file = info_path+"IsFinish.txt"
	#crash file
	crash_file = info_path+"IsCrash.txt"
	#mainact_file
	mainact_file = info_path+"mainAct.txt"
	#name file
	name_file= info_path+"getName.txt"
	#manifestStartFlag
	manifestStartFlagFile= info_path+"manifestStartFlag.txt"
	#atg file
	atg_file = info_path+"atg.dot"
	currentATG_file = info_path+"currentATG.dot"
	GUIinfo_file = info_path + "GUIinfo.txt"
	screenshot_file = info_path + "states.txt"
	#serialized file
	ser_file = info_path+"serialize.txt"
	# recordEvents file
	recordEvents_file = info_path+"recordEvents.txt";
	#profile
	profile_path= "profile\\"
	profile="profile.txt"
	#instrument_log
	instrument_log= "instrument_log.txt"
	instrument_log_this = "instrument_log_filter.txt"
	instrument_log_this_target = "instrument_log_target.txt"

	#adblog
	adblog = info_path+"adblog.txt"
	#editText_values
	editText_values = info_path+"EditText_values.txt"
	#sequence_xml
	sequence_xml= "Test_Seq.xml"
	#sequence_xml2
	sequence_xml2="Test_Seq2.xml"
	#sequence_xml2
	sequence_xml3="Test_Seq3.xml"
	#sequence_java
	sequence_java="Test_Seq.java"
	#sequence_java2
	sequence_java2="Test_Seq2.java"
	#sequence_java3
	sequence_java3="Test_Seq3.java"
	#sequence_java4
	sequence_java4="Test_Seq4.java"
	##tag
	ins_key ="D/K_InsDal"
	ins_val ="D/V_InsDal"
	ins_method ="D/M_InsDal"
	#method file
	method_file = info_path+"method.txt"
	method_file1 = info_path+"ins_info.txt"
	#class file
	class_file = "class.txt"
	#add_stake_log
	add_stake_log="add_stake_log.txt"
	#not_add_stake_log
	not_add_stake_log="not_add_stake_log.txt"
	#function getTime
	getTime = "getTime.txt"
	#view and action pair file
	view_action_file = "view_action.txt"
	#clks infomation
	clks_file = "clks_file.txt"
	#rewrite file
	re_auto_file = info_path+"re_auto_file.txt"
	re_stake_file = info_path+"re_stake_file.txt"
	re_calculate_file = info_path+"re_calculate_file.txt"
	re_calculate_file_html = info_path+"re_calculate_file.html"
	re_calculate_file1 = info_path+"re_calculate_file1.txt"
	re_time_file = info_path+"re_time_file.txt"
	
	
	#test cases
	test_cases='Test_Seq'
	test_cases2='Test_Seq2'
	test_cases3='Test_Seq3'
	test_cases4='Test_Seq4'
	#xml2robt
	xml2robt = "libs\\xml2robt_v3.jar"
	#apk instrument 
	InsDal = "libs\\InsDal.jar"
	#testGenerator
	testGenerator = "libs\\testGenerator.jar"
	
	#permits
	sdcard_permit='<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>'
	stack_permit='<uses-permission android:name="android.permission.GET_TASKS"/>'
	log_permit= '<uses-permission android:name="android.permission.READ_LOGS"/>'
	#20150914
	sampleRobotProject ='Sample'
	sampleTestProject ='Sample'
	bfs_preparefile = 'MyPrepare'
	bfs_testfile='MyTest'

	##scroll
	LEFT = 98
	UP = 99
	DOWN = 100
	RIGHT = 101
	SCROLLMIN = 98
	SCROLLMAX = 101
	## target statement
	target_file= profile_path+"label\\target.txt"
	## stack statement
	stack_file = profile_path+"label\\stack_table"
	# ## class message by decompile
	# method_file_path =info_path+"method.txt"
	# class_file_path =info_path+"class.txt"
	## the constructor.
	## init all the constant variables.
	def __init__(self) :
		pass

	## determine whether an instruction is an invoke instruction
	# @param ins an instruction
	# @return whether an instruction is an invoke instruction
	@staticmethod
	def is_invoke_ins(ins) :
		return ins in Constant.invoke_ins

	## determine whether an instruciton is a java package method
	# @param ins an instruction
	# @return whether an instruction is a java package method
	@staticmethod
	def is_java_package(ins) :
		for astr in Constant.java_package :
			if ins.startswith(astr) :
				return True
		return False

	## determine whether an instruction is an android package method
	# @param ins an instruction
	# @return whether an instruction is an android package method
	@staticmethod
	def is_android_package(ins) :
		for astr in Constant.android_package :
			if ins.startswith(astr) :
				return True
		return False

	## determine whether a class is a R class
	# @param class_name a class name
	# @return whether a class is a R class
	@staticmethod
	def is_R_class(class_name) :
		cname = class_name.split(Constant.slash_str)[-1]		
		if cname == 'R;' or re.match('R\$', cname):
			#print 'cname = '+cname
			return True
		return False
		
