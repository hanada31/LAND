package utils;


public class Constant {
	//for scroll operation
	public static final int LEFT =      4000098;
	public static final int UP =        4000099;
	public static final int DOWN =      4000100;
	public static final int RIGHT =     4000101;
	public static final int SCROLLMIN = 4000098;
	public static final int SCROLLMAX = 4000101;
	public static final int SUMACTION = 4000199;
	public static final int BACK =      4000110;	
	public static final int PHONELEN =  4000011;	
	//for storage
//	public static final String logFile = Environment.getExternalStorageDirectory().getPath()+"Log.txt";
//	public static final String finishFile = Environment.getExternalStorageDirectory().getPath()+"IsFinish.txt";
//	public static final String crashFile = Environment.getExternalStorageDirectory().getPath()+"IsCrash.txt";
//	public static final String mainActFile = Environment.getExternalStorageDirectory().getPath()+"MainAct.txt";
//	public static final String serializeFile = Environment.getExternalStorageDirectory().getPath()+"Serialize.txt";
//	public static final String profile = Environment.getExternalStorageDirectory().getPath()+"profile.txt";
	
//	public static  String path ="/sdcard"; 
	public static  String path ="/sdcard";
	public static final String LOGFILE =path+"/Log.txt";
	public static final String FINISHFILE = path+"/IsFinish.txt";
	public static final String CRASHFILE = path+"/IsCrash.txt";
	public static final String MAINACTFILE = path+"/MainAct.txt";
	public static final String SERIALIZEFILE = path+"/Serialize.txt";
	public static final String PROFILE =  path+"/profile.txt";
	public static final String NAMEFILE =  path+"/getName.txt";
	public static final String MANIFESTSTARTFLAGFILE =path+"/manifestStartFlag.txt";
	public static final String ATG = path+"/atg.dot";
	
	public static final String MODEL_TAG =  "BFS";
//	public static final String INSTRUMENT_TAG =  "Instrument";
//	public static final String TARGET_TAG =  "Target_Instrument";
	public static final String METHOD_TAG =  "M_InsDal";
	public static final String TARGET_TAG =  "K_InsDal";
	public static final String RANDOM =  "random";
	public static final String GIVEN =  "given";
	public static final String MANUAL =  "manual";
	public static final String NORMAL =  "normal";
	public static final String INVERTED =  "inverted";
	public static final String CANCLEFIRST = "cancleFirst";
	public static final String FIRST = "first";
	public static final String EACH = "each";

	public static final String CLEAREDITTEXT = "clearEditText";
	public static final String CLICKONVIEW = "clickOnView";
	public static final String SLEEPEDITTIME = "sleepEditTime";
	public static final String GETEDITTEXT = "getEditText";
	public static final String TYPETEXT = "typeText";
	public static final String ENTERTEXT =  "enterText";
	public static final String SENDKEY = "sendKey";
	public static final String SLEEPSMALLTIME = "sleepSmallTime";
	public static final String CLICKINLIST = "clickInList";
	public static final String SETPROGRESSBAR = "setProgressBar";
	public static final String PRESSSPINNERITEM = "pressSpinnerItem";
	public static final String CLICKONSCREEN = "clickOnScreen";
	public static final String CLICKLONGONSCREEN = "clickLongOnScreen";
	public static final String CLICKLONGONVIEW= "clickLongOnView";
	public static final String POINT = "point";
	public static final Integer STANDARD = 400;
	public static final Integer SINGLETOP = 401;
	public static final Integer SINGLETASK = 402;
	public static final Integer SINGLEINSTANCE = 403;
	
	public static final Integer FLAG_ACTIVITY_NEW_TASK = 268435456;// Constant Value: 268435456 (0x10000000) 
	public static final Integer FLAG_ACTIVITY_SINGLE_TOP = 536870912;// Constant Value: 536870912 (0x20000000) 
	public static final Integer FLAG_ACTIVITY_CLEAR_TOP = 67108864;// Constant Value: 67108864 (0x04000000) 
	

	public static final String ACTIVITYFINISH = ": finish()V";
	public static final String STARTACTIVITY = ": startActivity(Landroid/content/Intent;)V";
	public static final String STARTACTIVITY2 = ": startActivityForResult(Landroid/content/Intent;I)V";
	public static final String SETFLAG = ": setFlags(I)Landroid/content/Intent;";
	public static final String ONBACKPRESSED = ": onBackPressed(";
	
}
