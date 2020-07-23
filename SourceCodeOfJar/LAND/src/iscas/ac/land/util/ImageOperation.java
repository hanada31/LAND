package iscas.ac.land.util;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ImageOperation {
	
	/**
	 * 指定路径下的图片的宽度大于width或高度大于height时返回真
	 * @param width
	 * @param height
	 * @param imagePath
	 * @return
	 */
	public static boolean isImageTooLarge(int width,int height,String imagePath) {
		try {
			File imageFile = new File(imagePath);
			if( !imageFile.exists())
				return false;
			BufferedImage image = ImageIO.read(imageFile);
			return image.getWidth()>=width||image.getHeight()>=height;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public static boolean isImageTooLarge(int width,int height,ImageIcon theImage) {
		return theImage.getIconWidth()>=width||theImage.getIconHeight()>=height;
	}
	
	public static void setBackgroundImage(final ImageIcon theImage,JScrollPane showRunningMessagePane,JTextArea taShowRunningMessage,int width,int height) {
		taShowRunningMessage = new JTextArea(){
			private static final long serialVersionUID = 1L;
			protected void paintComponent(Graphics g) {
//				int x = (width-theImage.getIconWidth())/2;
//				int y = (height-theImage.getIconHeight())/2;
//				if( ImageOperation.isImageTooLarge(width, height, theImage)) {
				g.drawImage(theImage.getImage(), 0, 0, this);
//				}
//				else {
//					g.drawImage(theImage.getImage(),x,y, this);
//				}
				super.paintComponent(g);
			}  
		};
		taShowRunningMessage.setOpaque(false); // 设置透明  
		taShowRunningMessage.setEditable(false);
		taShowRunningMessage.setBackground(Color.WHITE);
		taShowRunningMessage.setForeground(Color.WHITE);
		showRunningMessagePane.setViewportView(taShowRunningMessage);
	}
	
	public static void clearBackgroundImage(JScrollPane showRunningMessagePane,JTextArea taShowRunningMessage) {
		taShowRunningMessage = null;
		taShowRunningMessage = new JTextArea(){
			private static final long serialVersionUID = 1L;
			{
				setOpaque(false); // 设置透明  
			}
			protected void paintComponent(Graphics g) {  
				g.drawImage(null, 0, 0, this);
		    	super.paintComponent(g);
			}  
		};
		showRunningMessagePane.setViewportView(taShowRunningMessage);
	}
	
	//文件输出流打开后一定要关闭。。。
	public static void resizeImage(String inputPath, String outputPath, int newWidth,int newHeight, String format) throws IOException {
		InputStream is = new FileInputStream(new File(inputPath));
        OutputStream os = new FileOutputStream(new File(outputPath));
		BufferedImage prevImage = ImageIO.read(is);
		int reHeight, reWidth;
		double w = 1.0*prevImage.getWidth()/newWidth;
		double h = 1.0*prevImage.getHeight()/newHeight;
		if(w>=h){
			reWidth = newWidth;
			reHeight = (int)(prevImage.getHeight()/w);
		}else{
			reHeight = newHeight;
			reWidth = (int)(prevImage.getWidth()/h);
		}
        BufferedImage newImage = new BufferedImage(reWidth, reHeight, BufferedImage.TYPE_INT_BGR);
        newImage.getGraphics().drawImage(prevImage,0,0,reWidth,reHeight,null);
        JPEGImageEncoder encoder=JPEGCodec.createJPEGEncoder(os);
        encoder.encode(newImage);
        os.close();
    }
}