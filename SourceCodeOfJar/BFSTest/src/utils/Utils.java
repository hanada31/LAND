package utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import model.MyView;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Context;
import android.view.View;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.ToggleButton;

/**
 * Util functions
 * @author user
 *
 */
public class Utils {
	
	public static ArrayList<String> viewTypes =  
			new ArrayList<String>(){
		{
			add("TextView"); add("EditText");
			add("AutoCompleteTextView"); add("ListView");
			add("GridView"); add("TimePicker");
			add("DatePicker"); add("CheckBox");
			add("Spinner"); add(".Button");
			add("RadioButton"); add("ToggleButton");
			 add("SeekBar");add("RatingBar");
			 add("ImageButton");add("ImageView");
		}
		}; 
		
	/**
	 * judge is Activity Stack Empty
	 * 
	 * @param context
	 * @return
	 */ 	
	public static boolean isActivityStackEmpty(Activity context) {
		ActivityManager manager = (ActivityManager) context
				.getSystemService(Context.ACTIVITY_SERVICE);
		List<RunningTaskInfo> runningTaskInfos = manager.getRunningTasks(1);
		if (runningTaskInfos != null)
			return false;
		else
			return true;
	}

	/**
	 * get Top Activity
	 * 
	 * @param context
	 * @return
	 */
	public static String getTopActivity(Activity context) {
		ActivityManager manager = (ActivityManager) context
				.getSystemService(Context.ACTIVITY_SERVICE);
		List<RunningTaskInfo> runningTaskInfos = manager.getRunningTasks(1);
		if (runningTaskInfos != null) {
			String name = (runningTaskInfos.get(0).topActivity)
					.getShortClassName();
			if (name.substring(0, 1).equals("."))
				name = name.substring(1, name.length());
			return name;
		} else {
			return null;
		}
	}

	
	
	/**
	 * get activity list
	 * @return
	 */
	public static ArrayList<String> getActList() {
		String[] acts = IO.getActivities(Constant.NAMEFILE).split(";");;
		ArrayList<String> list = new ArrayList<String>();
		for(int i=0; i<acts.length;i++){
			list.add(acts[i]);
		}
		return list;
	}
	
	/**
	 * get activity list
	 * @return
	 */
	public static Map<String,String> getManifestStartFlag() {
		return IO.getManifestFlag(Constant.MANIFESTSTARTFLAGFILE);
	}
	
	/**
	 * isSplashAct
	 * @param curact
	 * @return
	 * @date 0922
	 */
	public static  boolean isSplashAct(String curact) {
		if (curact.contains("Splash")) {
			MyLog.log("Splash");
			return true;
		}else{
			MyLog.mainAct(curact);
			return false;
		}
	}
	/**
	 * view is bar or not
	 * 
	 * @param view
	 * @return
	 */
	public static boolean isClickableBar(View view) {
		// not contain progressbar
		String type = view.getClass().getName();
		if (type.contains("SeekBar") || type.contains("RatingBar")) {
			return true;
		}
		return false;
	}
	/**
	 * isLanucher
	 * @param nextact
	 * @return
	 * @date 0922
	 */
	public static boolean isLanucher(String nextact) {
		if(nextact.contains("launcher")|| nextact.contains("Launcher")|| nextact.contains("LAUNCHER"))	
			return true;
		else
			return false;
	}
	

	
	/**
	 * isScrollGesture
	 * 
	 * @param curviewid
	 * @return
	 */
	public static boolean isScrollGesture(int curviewid) {
		if (curviewid >= Constant.SCROLLMIN && curviewid <= Constant.SCROLLMAX)
			return true;
		else
			return false;
	}
	

	/**
	 * is dialog by view contained
	 * @param currentViews
	 * @return
	 */
	public static boolean isDialog(ArrayList<View> currentViews) {
		for(View view :currentViews){
			if(view.getId()<=16908315 && view.getId()>=16908313)
				return true;
		}
		return false;
	}

	//view attributes----------------------------------------------
	/**
	 * getNumOfView
	 * @param view
	 * @return
	 */
	public static int getNumOfView(View view) {
		int num=0;
		String viewType =view.getClass().getName();
		if (viewType.contains("ListView") || viewType.contains("GridView")) {
			if(view.getClass().isAssignableFrom(AbsListView.class)){
				AbsListView list = (AbsListView) view;
				num = list.getCount();
			}
		}
		return num;
	}
	/**
	 * getInfoOfView
	 * @param view
	 */
	public static void getInfoOfView(View view) {
		MyLog.log("id "+view.getId());
		MyLog.log("text "+getTextOfView(view));
		MyLog.log("state "+getStateOfView(view));
		MyLog.log("type "+getTypeOfView(view));
		
	}
	/**
	 * getTextOfView
	 * @param view
	 * @return
	 */
	public static String getTextOfView(View view) {
		String text="";
		String viewType =view.getClass().getName();
		if (viewType.contains("EditText") || viewType.contains("AutoCompleteTextView")) {
			EditText edt = (EditText) view;
			text = edt.getText().toString();
		}else if (viewType.contains(".Button")  ||viewType.contains("RadioButton") 
				||viewType.contains("ToggleButton") ||viewType.contains("CheckBox")) {
			Button btn = (Button)view;
			text= btn.getText().toString();
			if(text.contains("(")){
				text = "left bracket";
			}else if(text.contains(";")){
				text = "semicolon";
			}
		}else if (viewType.contains("TextView")) {
			TextView tv = (TextView)view;
			text= tv.getText().toString().split("\n")[0]; 
			if(text.length()>20)
				text = text.substring(0, 19);
			if(text.contains("(")){
				text = "left bracket";
			}else if(text.contains(";")){
				text = "semicolon";
			}
		}
		return text;
	}
	
	/**
	 * getStateOfView
	 * @param view
	 * @return
	 */
	public static boolean getStateOfView(View view) {
		boolean state = false;
		String viewType =view.getClass().getName();
		if(viewType.contains("RadioButton") ){
			RadioButton btn = (RadioButton)view;
			state = btn.isChecked();
		}else if(viewType.contains("ToggleButton") ){
			ToggleButton btn = (ToggleButton)view;
			state = btn.isChecked();
		}else if(viewType.contains("CheckBox") ){
			CheckBox btn = (CheckBox)view;
			state = btn.isChecked();
		}
		return state;
	}
	
	/**
	 * getLocationOfView
	 * @param view
	 * @return
	 */
	public static int[] getLocationOfView(View view) {
		int[] location = new  int[2] ;
		view.getLocationOnScreen(location);
		return location;
	}

	/**
	 * getTypeOfView
	 * @param view
	 * @return
	 */
	public static String getTypeOfView(View view) {
		String viewType = view.getClass().getName(); //normal type
		String startClass = viewType.split("\\.")[0];
		if(!startClass.equals("android")){
			viewType =view.getClass().getSuperclass().getName();//customed type
		}
		startClass = viewType.split("\\.")[0];
//		if(!startClass.equals("android")){ //unkown type
//			viewType = "unkown";
//		}
		return viewType;
	}
	//view attributes----------------------------------------------

	/**
	 * isSame
	 * @param arrayList
	 * @param currentStack
	 * @return
	 */
	public static boolean isArrayListSame(List<String> arr1, List<String> arr2) {
        if (arr1==arr2)
            return true;
        if (arr1==null || arr2==null)
            return false;

        int length = arr1.size();
        if (arr2.size() != length)
            return false;

        for (int i=0; i<length; i++) {
            String o1 = arr1.get(i);
            String o2 = arr2.get(i); 
            if (!(o1==null ? o2==null : o1.equals(o2)))
                return false;
        }

        return true;
    }
}
