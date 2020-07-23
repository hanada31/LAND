package utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

import android.annotation.SuppressLint;
import android.util.Log;

/**
 * Log operation
 * @author yjw 
 * @date 20151021
 */
public class MyLog {

	/**
	 * write log file in log file
	 * @param text
	 */
	public static void log( String text) {
		File f = new File(Constant.LOGFILE);
	    FileWriter fileWriter;
		try {
			if (!f.exists()) {
				f.createNewFile();
			}
			fileWriter = new FileWriter(f,true);
			System.out.println();
			Log.d(Constant.MODEL_TAG,text);
		    fileWriter.write(text+"\n");
		    //fileWriter.write("time("+getTime()+"\n");
		    fileWriter.flush();
		    fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace(); 
		}
	}
	
	/**
	 * get time
	 * @return
	 */
	@SuppressLint("SimpleDateFormat")
	public static String getTime(){
    	long time=System.currentTimeMillis();//long now = android.os.SystemClock.uptimeMillis();
    	SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
    	Date d1=new Date(time);
    	return format.format(d1);
    }
	
	
	/**
	 * write log file in log file
	 * @param text
	 */
	public static void logOnlyFile( String text) {
		File f = new File(Constant.LOGFILE);
	    FileWriter fileWriter;
		try {
			if (!f.exists()) {
				f.createNewFile();
			}
			fileWriter = new FileWriter(f,true);
			System.out.println();
		    fileWriter.write(text+"\n");
		    fileWriter.flush();
		    fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * write isFinish file
	 * @param text
	 */
	public static void isFinish( String text) {
		MyLog.log("finish");
		File f = new File(Constant.FINISHFILE);
	    FileWriter fileWriter;
		try {
			if (!f.exists()) {
				f.createNewFile();
			}
			fileWriter = new FileWriter(f,false);
			Log.d(Constant.MODEL_TAG,text);
		    fileWriter.write(text+"\n");
		    fileWriter.flush();
		    fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * write isCrash file
	 * @param text
	 */
	public static void isCrash( String text) {
		File f = new File(Constant.CRASHFILE);
	    FileWriter fileWriter;
		try {
			if (!f.exists()) {
				f.createNewFile();
			}
			fileWriter = new FileWriter(f,false);
			Log.d(Constant.MODEL_TAG,text);
		    fileWriter.write(text+"\n");
		    fileWriter.flush();
		    fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * init Log file
	 */
	public static void initLog() {
		File f = new File(Constant.LOGFILE);
	    FileWriter fileWriter;
		try {
			if (!f.exists()) {
				f.createNewFile();
			}
			fileWriter = new FileWriter(f,false);
		    fileWriter.write("prepared\n");
		    fileWriter.flush();
		    fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * init mainAct file 
	 */
	public static void initMainAct() {
		File f = new File(Constant.MAINACTFILE);
	    FileWriter fileWriter;
		try {
			if (!f.exists()) {
				f.createNewFile();
			}
			fileWriter = new FileWriter(f,false);
		    fileWriter.write("");
		    fileWriter.flush();
		    fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * write mainAct file
	 * @param act
	 */
	public static void mainAct(String act) {
		File f = new File(Constant.MAINACTFILE);
	    FileWriter fileWriter;
		try {
			if (!f.exists()) {
				f.createNewFile();
			}
			fileWriter = new FileWriter(f,false);
		    fileWriter.write(act+"\n");
		    fileWriter.flush();
		    fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * record view's info when finish
	 * @param actUi
	 */
	public static void recordViews(
			LinkedHashMap<String, LinkedHashMap<String, String>> actUi) {
		File f = new File(Constant.LOGFILE);
	    FileWriter fileWriter;
		try {
			if (!f.exists()) {
				f.createNewFile();
			}
			fileWriter = new FileWriter(f,true);
			fileWriter.write("record");
			for (Entry<String, LinkedHashMap<String, String>> entry : actUi
					.entrySet()) {
				//fileWriter.write("(" + entry.getKey() + " -> ");
				LinkedHashMap<String, String> uimap = entry.getValue();
				for (Entry<String, String> entry2 : uimap.entrySet()) {
					fileWriter.write("#"+entry2.getKey() + ";" + entry2.getValue());
				}
			}
			fileWriter.write("#\n");
		    fileWriter.flush();
		    fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * clear logcat
	 */
	public static void clearLog(){
		try {
			  MyLog.log("clearLog");
			  Runtime.getRuntime().exec("logcat -c");
			} 
		catch (IOException e) {
			MyLog.log(e.toString());
		}
	}
	/**
	 * get Log content 
	 * @param filter
	 * @return
	 */
	public static String getLogcatInfo(){
		StringBuilder log=new StringBuilder();
		try {
			  String cmd = "logcat -d -s " +Constant.TARGET_TAG+":D "+Constant.METHOD_TAG+":D";
			  Process process = Runtime.getRuntime().exec(cmd);
			  
			  BufferedReader bufferedReader = new BufferedReader(
			  new InputStreamReader(process.getInputStream()));
			  
			  String line = bufferedReader.readLine();
			  while ((line = bufferedReader.readLine()) != null) {
			    log.append(line+"\n");
			  }
			} catch (IOException e) {
			}
		String res = log.toString();
		//if(res.length()>0)
			//MyLog.log(res);
		return res;
    }
	
}
