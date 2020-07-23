package utils;

import java.util.ArrayList;

import android.view.View;

public class Print {

	/**
	 * printViews
	 * 
	 * @param views
	 */
	public static void printViews(ArrayList<View> views) {
		MyLog.log("printViews");
		String str = "[";
		for (View view : views) {
			str += view.getClass().getName()+" -> ";
			str += ";clkable "+view.isClickable();
			str += ";enable "+view.isEnabled();
			str += ";focus "+view.isFocusable();
			str += ";shown "+view.isShown();
			str += " "+view.getId() + "\n";
			

		}
		MyLog.log(str + "]");
	}


	/**
	 * printEnabledViews
	 * 
	 * @param views
	 */
	public static void printEnabledViews(ArrayList<View> views) {
		MyLog.log("printEnabledViews");
		String str = "[";
		for (View view : views) {
			if(view.isEnabled())
				str += view.getId() + ", ";

		}
		MyLog.log(str + "]");
	}
	/**
	 * printClickableViews
	 * 
	 * @param views
	 */
	public static void printClickableViews(ArrayList<View> views) {
		MyLog.log("printClickableViews");
		String str = "[";
		for (View view : views) {
			if(view.isClickable())
				str += view.getId() + ", ";

		}
		MyLog.log(str + "]");
	}



}
