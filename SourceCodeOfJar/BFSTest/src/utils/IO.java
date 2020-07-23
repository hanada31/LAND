package utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;


/**
 * IO¡¡operation
 * @author yjw
 * @date 20151021
 */
public class IO {
	
	/**
	 * get tempSer from file
	 * @return
	 * @date 0922
	 */
	public static Serialize getTempSer(Serialize tempSer){
		ObjectInputStream is = null;
		try {
			is = new ObjectInputStream(new FileInputStream(
					Constant.SERIALIZEFILE));
			tempSer = (Serialize) is.readObject();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(is!=null)
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return tempSer;
	}
	

	/**
	 * initFiles
	 * 
	 * @throws IOException
	 * @throws ClassNotFoundException
	 * @date 0922
	 */
	public static void initFiles()  {
		File f =null;
		FileWriter fileWriter = null;
		ObjectOutputStream os = null;
		try{
		Serialize ser = null;
		f = new File(Constant.SERIALIZEFILE);
		if (!f.exists()) {
			f.createNewFile();
		}
		fileWriter = new FileWriter(f);
		fileWriter.write("");
		fileWriter.flush();

	    os = new ObjectOutputStream(new FileOutputStream(f,
				false));
		os.writeObject(ser);
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
			os.close();
			fileWriter.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		MyLog.isFinish("not yet");
		MyLog.initLog();
		MyLog.initMainAct();
	}
	
	
	/**
	 * Read Profile
	 * @param filename
	 * @param tag
	 * @return
	 */
	@SuppressWarnings("resource")
	public static String ReadProfile(String filename, String tag) {
		File file = new File(filename);
		InputStream instream = null ;
		InputStreamReader inputreader = null;
		BufferedReader buffreader = null;
		try {
			instream = new FileInputStream(file);
			if (instream != null) {
				inputreader = new InputStreamReader(instream, "gbk"); 
				buffreader = new BufferedReader(inputreader);
				String line;
				while ((line = buffreader.readLine()) != null) {
					if(line.contains(tag)){
						String ss[] = line.split(":");
						return ss[ss.length-1];
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				buffreader.close();
				inputreader.close();
				instream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "";
	}
	
	
	/**
	 * ReadProfile_Menu
	 * @param filename
	 * @return
	 */
	public static String ReadProfile_Menu(String filename) {
		File file = new File(filename);
		InputStream instream = null ;
		InputStreamReader inputreader = null;
		BufferedReader buffreader = null;
		int menuItemNum = 0;
		String menuStr ="";
		try {
			instream = new FileInputStream(file);
			if (instream != null) {
				inputreader = new InputStreamReader(instream, "gbk"); 
				buffreader = new BufferedReader(inputreader);
				String line;
				while ((line = buffreader.readLine()) != null) {
					if(line.contains("menuItemNum")){
						String ss[] = line.split(":");
						menuItemNum = Integer.parseInt(ss[ss.length-1]);
						break;
					}
				}
				int i=0;
				while ((line = buffreader.readLine()) != null) {
					if(line.contains("menu"+i)){
						String ss[] = line.split(":");
						String menu = ss[ss.length-1];
						menuStr = menuStr+menu+";";
						i++;
					}
					if(i>menuItemNum) break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				buffreader.close();
				inputreader.close();
				instream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return menuStr;
	}
	
	public static String getActivities(String filename) {
		File file = new File(filename);
		InputStream instream = null ;
		InputStreamReader inputreader = null;
		BufferedReader buffreader = null;
		String acts = "";
		try {
			instream = new FileInputStream(file);
			if (instream != null) {
				inputreader = new InputStreamReader(instream); 
				buffreader = new BufferedReader(inputreader);
				String line = "";
				while ((line = buffreader.readLine()) != null) {
					if(line.contains("main") || line.contains("act")){
						acts += line.split(":")[1];
						acts += ";";
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				buffreader.close();
				inputreader.close();
				instream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return acts;
	}
	/**
	 * write Ser To File
	 * @param tempSer
	 */
	public static void writeSerToFile(Serialize tempSer) {
		ObjectOutputStream os;
		try {
			os = new ObjectOutputStream(new FileOutputStream(
					Constant.SERIALIZEFILE));
			os.writeObject(tempSer);
			os.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
			MyLog.log("writeSerToFile error.");
		}
		
	}

	
	/**
	 * write latgog file
	 * @param text
	 */
	public static void writeATGFile( String atg) {
		File f = new File(Constant.ATG);
	    FileWriter fileWriter;
		try {
			if (!f.exists()) {
				f.createNewFile();
			}
			fileWriter = new FileWriter(f,false);
		    fileWriter.write(atg);
		    fileWriter.flush();
		    fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace(); 
		}
	}
	
	/**
	 * getManifestActivityFlag
	 * @param filename 
	 * @return
	 */
	public static Map<String,String> getManifestFlag(String filename) {
		Map<String,String> flag = new HashMap<String,String>();
		File file = new File(filename);
		InputStream instream = null ;
		InputStreamReader inputreader = null;
		BufferedReader buffreader = null;
		try {
			instream = new FileInputStream(file);
			if (instream != null) {
				inputreader = new InputStreamReader(instream); 
				buffreader = new BufferedReader(inputreader);
				String line = "";
				while ((line = buffreader.readLine()) != null) {
					String ss[] = line.split(" ");
					flag.put(ss[0], ss[1]);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(buffreader!=null)
					buffreader.close();
				if(inputreader!=null)
					inputreader.close();
				if(instream!=null)
					instream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return flag;
	}
}
