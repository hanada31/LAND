package iscas.ac.land.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class FileOperation {
	
	@SuppressWarnings("resource")
	public static boolean isFileSame(String firstPath,String secondPath) {
		try {
			FileInputStream firstFile = new FileInputStream(firstPath);
			FileInputStream secondFile = new FileInputStream(secondPath);
			int first,second;
			if( firstFile.available() != secondFile.available() )
				return false;
			while( (first=firstFile.read()) != -1 && (second=secondFile.read()) != -1) {
				if( first != second )  
                    return false;
            } 
			return true;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	
	public static void saveExploreConfiguration(String path,Map<String,String> configureMap) {
		try {
			BufferedWriter bw = new BufferedWriter(new FileWriter(new File(path)));
			for(Map.Entry<String, String> entry:configureMap.entrySet())
				bw.write(entry.getKey()+":"+entry.getValue()+"\n");
			bw.write("isScroll:0");
			bw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void deleteFileBeforeExploration(String apkName) {
		FileOperation.fileDelete(GlobalVariable.basePath+"\\files\\"+apkName+"\\Infos\\"+GlobalVariable.dotName);
		FileOperation.fileDelete(GlobalVariable.basePath+"\\files\\"+apkName+"\\Infos\\"+GlobalVariable.backupDotName);
		FileOperation.fileDelete(GlobalVariable.basePath+"\\files\\"+apkName+"\\Infos\\current.png");
		FileOperation.fileDelete(GlobalVariable.basePath+"\\files\\"+apkName+"\\Infos\\new-output.png");
	}
	
	public static String[] readModelFile(String path) {
		try {
			String[] resultArray = new String[2];
			File file = new File(path);
			if( !file.exists())
				return null;
			BufferedReader reader = new BufferedReader(new FileReader(new File(path)));
			String line = reader.readLine();
			resultArray[0] = line.split(":")[1].trim();
			line = reader.readLine();
			resultArray[1] = line.split(":")[1].trim();
			return resultArray;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	

	/**
	 * 读取探索操作的配置文件
	 * @param path 
	 * @param number 配置项数量
	 * @return
	 */
	public static String[] readExploreConfiguration(String path,int number){
		try {
			if(!new File(path).exists())
				return null;
			String[] configurationArray = new String[number];
			BufferedReader reader = new BufferedReader(new FileReader(new File(path)));
			String line="";
			while( (line=reader.readLine()) != null ) {
				if( line.trim().equals("") || line.charAt(0) == '[')
					continue;
				String[] lineArray = line.split(":");
				if( lineArray[0].equals("testMode") )
					configurationArray[0]=lineArray[1];
				else if( lineArray[0].equals("editTextType"))
					configurationArray[1]=lineArray[1];
				else if( lineArray[0].equals("isButtonLongClick"))
					configurationArray[2]=lineArray[1];
				else if( lineArray[0].equals("isTextLongClick"))
					configurationArray[3]=lineArray[1];
				else if( lineArray[0].equals("listVisit"))
					configurationArray[4]=lineArray[1];
				else if( lineArray[0].equals("clickType"))
					configurationArray[5]=lineArray[1];
				else if( lineArray[0].equals("enterTime"))
					configurationArray[6]=lineArray[1];
				else if( lineArray[0].equals("smallsleeptime"))
					configurationArray[7]=lineArray[1];
				else if( lineArray[0].equals("givenStr")){
					configurationArray[8]=lineArray[1];
				}
				else if( lineArray[0].equals("Similarity"))
					configurationArray[9]=lineArray[1];
				else if( lineArray[0].equals("launchtime"))
					configurationArray[10]=lineArray[1];
			}
			reader.close();
			return configurationArray;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		
		
	}
	
	public static List<String> readStreamFile(String path){
		try {
			if(!new File(path).exists())
				return null;
			List<String> configurationArray = new ArrayList<String>();
			BufferedReader reader = new BufferedReader(new FileReader(new File(path)));
			String line="";
			while( (line=reader.readLine()) != null ) {
				if( line.trim().equals("") || line.charAt(0) == '[')
					continue;
				configurationArray.add(line);
			}
			reader.close();
			return configurationArray;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
			
	}
	
	/**
	 * 从文件中读取报告信息
	 * @return 报告信息
	 */
	public static String readExplorationReport(String bugReportPath,String coverageReportPath) {
		String result="";
		String line="";
		BufferedReader reader;
		try {
			result+="Coverage Report:\n";
			reader = new BufferedReader(new FileReader(new File(coverageReportPath)));
			while( (line=reader.readLine()) != null ) {
				result+=line+"\n";
			}
			reader.close();
			result+="\nBug Report:\n";
			reader = new BufferedReader(new FileReader(new File(bugReportPath)));
			while( (line=reader.readLine()) != null ) {
				result+=line+"\n";
			}
			return result; 
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	
	/**
	 * 从文件中读取APK信息存放到messageArray数组中
	 * @param path
	 * @param messageArray
	 */
	public static String[] readApkInformation(String path) {
		String[] messageArray = new String[3];
		File file = new File(path);  
        BufferedReader reader = null;  
        try {  
            reader = new BufferedReader(new FileReader(file));  
            String line = null;  
            line = reader.readLine();
            messageArray[0] = line.split(":")[1];
            line = reader.readLine();
            messageArray[1] = line.split(":")[1];
            int number=1;
            while( reader.readLine() != null )
            	number++;
            messageArray[2]=number+"";
            reader.close();  
        } catch (IOException e) {  
            e.printStackTrace();
            return null;
        } 
		return messageArray;
	}
	
	private static boolean isFileInBanList(String fileName) {
		return fileName.equals("getName.txt")||fileName.equals("manifestStartFlag.txt")||fileName.equals("EditText_values.txt");
	}
	
	
	public static boolean folderDelete(String path) {
		File fileFolder = new File(path);
		if( !fileFolder.exists() || !fileFolder.isDirectory())
			return false;
		String[] fileList = fileFolder.list();
		File temp = null;
		for(int i=0;i < fileList.length; i++) {
			if( FileOperation.isFileInBanList(fileList[i]))
				continue;
			if( path.endsWith(File.separator) ) {
				temp = new File(path+fileList[i]);
			}
			else {
				temp = new File(path+File.separator+fileList[i]);
			}
			if( temp.isFile() )
				temp.delete();
		}
		return true;
	}
	
	public static void fileDelete(String path) {
		if( new File(path).exists() )
			new File(path).delete();
	}


	public static void saveInstrumentConfiguration(String filename, String res) {
		try {
			BufferedWriter bw = new BufferedWriter(new FileWriter(new File(filename)));
			bw.write(res);
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
