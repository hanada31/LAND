package utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;



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
					Constant.FILEPATH+Constant.SERIALIZEFILE));
			tempSer = (Serialize) is.readObject();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return tempSer;
	}
	
	
	/**
	 * write  file
	 * @param text
	 */
	public static void writeFile(String filename,  String content) {
		File f = new File(filename);
	    FileWriter fileWriter;
		try {
			if (!f.exists()) {
				f.createNewFile();
			}
			fileWriter = new FileWriter(f,false);
		    fileWriter.write(content);
		    fileWriter.flush();
		    fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace(); 
		}
	}
}
