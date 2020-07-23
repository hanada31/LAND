package utils;

public class Profile {

	
	/**
	 * Sleep Time before start
	 * @return
	 */
	public static int getSleepTime() {
		String time = IO.ReadProfile(Constant.PROFILE, "sleeptime");
		return Integer.parseInt(time);
	}
	
	/**
	 * sleep time after click view
	 * @return
	 */
	public static int getSmallSleepTime() {
		String time = IO.ReadProfile(Constant.PROFILE, "smallsleeptime");
		return Integer.parseInt(time);
	}
	
	/**
	 * get how list visit all or only one
	 * @return
	 */
	
	public static String getListVisit() {
		String listVisit = IO.ReadProfile(Constant.PROFILE, "listVisit");
		return listVisit;
	}
	/**
	 * get how to click on a view
	 * @return
	 */
	
	public static String getClickType() {
		String type = IO.ReadProfile(Constant.PROFILE, "clickType");
		return type;
	}
	/**
	 * get getEnterTime Enter Time
	 * @return
	 */
	public static int getEnterTime() {
		String time = IO.ReadProfile(Constant.PROFILE, "enterTime");
		return Integer.parseInt(time);
	}
	
	/**
	 * get EditText enter Type
	 * @return
	 */
	public static String getEditTextType() {
		return IO.ReadProfile(Constant.PROFILE, "editTextType");
	}
	
	/**
	 * getMenuItemContent
	 * @return
	 */
	public static String getMenuItemContent() {
		String menuStr = IO.ReadProfile_Menu(Constant.PROFILE);
		MyLog.log("menuStr "+menuStr);
		return menuStr; 
	}
	
	 /**
	  * getGivenStr of edittext
	  * @return
	  */
	public static String getGivenStr() { 
		return IO.ReadProfile(Constant.PROFILE, "givenStr");	
	}
	/**
	 * getSimilarityProfile
	 * @return
	 */
	public static double getSimilarityProfile() {
		String similarity = IO.ReadProfile(Constant.PROFILE, "Similarity");
		return Double.parseDouble(similarity);
	}
	/**
	 * getTestMode
	 * @return
	 */
	public static int getTestMode() {
		String mode = IO.ReadProfile(Constant.PROFILE, "testMode");
		return Integer.parseInt(mode);
	}
	
//	/**
//	 * getSimilarityProfile
//	 * @return
//	 */
//	public static double getViewTreeProfile() {
//		String similarity = IO.ReadProfile(Constant.PROFILE, "CviewTree");
//		return Double.parseDouble(similarity);
//
//	}
//	/**
//	 * getSimilarityProfile
//	 * @return
//	 */
//	public static double getViewStateProfile() {
//		String similarity = IO.ReadProfile(Constant.PROFILE, "CviewState");
//		return Double.parseDouble(similarity);
//
//	}
//	/**
//	 * getSimilarityProfile
//	 * @return
//	 */
//	public static double getIsStackSameProfile() {
//		String similarity = IO.ReadProfile(Constant.PROFILE, "CisStackSame");
//		return Double.parseDouble(similarity);
//
//	}
	
	
	/**
	 * getIsLongClick
	 * @return
	 */
	public static int isTextLongClick() {
		String time = IO.ReadProfile(Constant.PROFILE, "isTextLongClick");
		return Integer.parseInt(time);

	}
	/**
	 * getIsLongClick
	 * @return
	 */
	public static int isButtonLongClick() {
		String time = IO.ReadProfile(Constant.PROFILE, "isButtonLongClick");
		return Integer.parseInt(time);

	}
	/**
	 * getIsLongClick
	 * @return
	 */
	public static int getIsScroll() {
		String time = IO.ReadProfile(Constant.PROFILE, "isScroll");
		return Integer.parseInt(time);

	}
}
