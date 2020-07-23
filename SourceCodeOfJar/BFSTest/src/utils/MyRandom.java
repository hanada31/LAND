package utils;

import java.util.Random;

public class MyRandom {

	/**
	 * getRandomNum
	 * @return
	 * @date 0923
	 */
	 public static int getRandomNum(int min, int max){
		 if(min == max)
			 return min;
		 Random random = new Random();
		 return  random.nextInt(max)%(max-min+1) + min;
	 }
	 
	 /**
	 * getRandomInput
	 * @param length
	 * @return
	 * @date 1109
	 */
	 public static String getRandomInput(int length){
	     String str="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	     Random random=new Random();
	     StringBuffer sb=new StringBuffer();
	     for(int i=0;i<length;i++){
	       int number=random.nextInt(62);
	       sb.append(str.charAt(number));
	     }
	     return sb.toString();
	 }
		 
	/**
	 * getRandomString
	 * @param length
	 * @return
	 * @date 1109
	 */
	 public static String getRandomString(int length){
	     String str="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	     Random random=new Random();
	     StringBuffer sb=new StringBuffer();
	     for(int i=0;i<length;i++){
	       int number=random.nextInt(52);
	       sb.append(str.charAt(number));
	     }
	     return sb.toString();
	 }
	 
	
		 
	 /**
	 * getRandomInt
	 * @param length
	 * @return
	 * @date 1109
	 */
	 public static String getRandomInt(int length){
	     String str="0123456789";
	     Random random=new Random();
	     StringBuffer sb=new StringBuffer();
	     for(int i=0;i<length;i++){
	       int number=random.nextInt(10);
	       sb.append(str.charAt(number));
	     }
	     return sb.toString();
	 }
	 
	 
	 /**
	 * getRandomMessy
	 * @param length
	 * @return
	 * @date 1109
	 */
	 public static String getRandomMessy(int length){
	     String str="!@#$%^&*()<>?:{}[];~¡¤+=',./|/'£¡@#£¤%¡­&£¨£©¡ª¡ª+-=¡¾¡¿{}£»£º¡°¡®£¬¡£¡¢£¿|¡¢~¡¤";
	     Random random=new Random();
	     StringBuffer sb=new StringBuffer();
	     for(int i=0;i<length;i++){
	       int number=random.nextInt(60);
	       sb.append(str.charAt(number));
	     }
	     return sb.toString();
	 }

}
