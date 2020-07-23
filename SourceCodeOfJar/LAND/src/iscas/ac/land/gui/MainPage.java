package iscas.ac.land.gui;

import java.awt.EventQueue;
import java.awt.Font;

import javax.swing.JFrame;
import javax.swing.JMenuBar;
import javax.swing.JOptionPane;
import javax.swing.BorderFactory;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JToolBar;
import javax.swing.UnsupportedLookAndFeelException;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Properties;

import javax.swing.SwingConstants;

import java.awt.Color;

import javax.swing.UIManager;
import javax.swing.border.TitledBorder;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.plaf.FontUIResource;
import javax.swing.JFileChooser;
import javax.swing.JTextField;

import iscas.ac.land.util.FileOperation;
import iscas.ac.land.util.GlobalVariable;
import iscas.ac.land.util.ScriptOperation;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.border.EtchedBorder;
import javax.swing.JTextArea;

import java.awt.Toolkit;

import javax.swing.JScrollPane;
import javax.swing.BoxLayout;

import com.jgoodies.looks.FontPolicies;
import com.jgoodies.looks.FontPolicy;
import com.jgoodies.looks.FontSet;
import com.jgoodies.looks.FontSets;
import com.jgoodies.looks.HeaderStyle;
import com.jgoodies.looks.Options;
import com.jgoodies.looks.plastic.Plastic3DLookAndFeel;
import com.jgoodies.looks.plastic.PlasticLookAndFeel;
import com.jgoodies.looks.plastic.PlasticXPLookAndFeel;
import com.jgoodies.looks.plastic.theme.*;
import com.jgoodies.looks.windows.WindowsLookAndFeel;

import java.awt.Dimension;


public class MainPage {
	private JFrame frmLandx;
	private JScrollPane showRunningMessagePane;
	
	private JTextField txtChoosenApk;
	private JTextArea taShowRunningMessage;
	private JTextField txtPackageName;
	private JTextField txtMainActivity;
	private JTextField txtActivityNumber;
	
	private JTextField txtNodeNumber;
	private JTextField txtEdgeNumber;
	
	private JButton btnChooseApk;
	private JButton btnDecompile;
	private JButton btnInstrument;
	private JButton btnInstall;
	private JButton btnExplore;
	private JButton btnExploreStop;
	private JButton btnGenerateReport;
	private JButton btnGenerateCrashReport;
	private JButton btnGenerateTestcase;
	private JButton btnRunTestcase;
	private JButton btnShowDecompileResult;
	private JButton btnViewExplorationReport;
	private JButton btnViewGeneratedTestcase;
	private JButton btnInstrumentationConfigure;
	private JButton btnExplorationConfigure;
	private JButton btnProfile;
	private JButton btnViewscreenshot;
	
	private Dimension myLabelDimension;
	
	BtnExploreThread exploreThread;
	ShowExploreMessageThread showPictureThread ;
	Thread t1,t2;
	
	class BtnDecompileThread implements Runnable{
		@Override
		public void run() {
			ScriptOperation.runDecompilePython(getApkName(),taShowRunningMessage,showRunningMessagePane,"operate/1_decompile.py","Decompile Finished!",null,
				new JButton[] { btnInstrument,btnShowDecompileResult,btnInstrumentationConfigure},1,new JTextField[] {txtPackageName,txtMainActivity,txtActivityNumber});
		}
	}
	
	class BtnInstrumentThread implements Runnable{
		@Override
		public void run() {
			ScriptOperation.runPython(getApkName(), taShowRunningMessage,showRunningMessagePane, "operate/2_instrument.py", "Instrument Finished!", null, new JButton[] {btnInstall}, 2);
		}
	}
	class BtnProfileThread implements Runnable{
		@Override
		public void run() {
			ScriptOperation.runPython(getApkName(), taShowRunningMessage,showRunningMessagePane, "operate/4_profile.py", "Generate Profile Finished!", null, new JButton[] {}, 0);
		}
	}
	
	class BtnInstallThread implements Runnable{
		@Override
		public void run() {
			ScriptOperation.runPython(getApkName(),taShowRunningMessage,showRunningMessagePane,"operate/3_install.py","Installation Finished!",null,new JButton[] {btnProfile,btnExplore,btnExplorationConfigure}, 3);
		}
	}
	
	class BtnGenerateReportThread implements Runnable{
		@Override
		public void run() {
			ScriptOperation.runPython(getApkName(), taShowRunningMessage, showRunningMessagePane, "operate/7_cal_coverage.py","Report Generation Finished", null, new JButton[] {btnViewExplorationReport}, -1);
		}
	}
	class BtnGenerateCrashReportThread implements Runnable{
		@Override
		public void run() {
			ScriptOperation.runPython(getApkName(), taShowRunningMessage, showRunningMessagePane, "operate/7_bug_report.py","Report Generation Finished", null, new JButton[] {btnViewExplorationReport}, -1);
		}
	}
	
	class BtnRunTestcaseThread implements Runnable{
		@Override
		public void run() {
			ScriptOperation.runPython(getApkName(), taShowRunningMessage, showRunningMessagePane, "operate/9_run_test_case.py","Run Generation Finished", null, new JButton[] {}, 0);
		}
	}
	
	class BtnExploreThread implements Runnable{
		@Override
		public void run() {
			btnViewscreenshot.setEnabled(true);
			btnGenerateReport.setEnabled(true);
			btnGenerateCrashReport.setEnabled(true);
			btnGenerateTestcase.setEnabled(true);
			ScriptOperation.runExplorePython(getApkName(),btnExplore,taShowRunningMessage,"operate/5_exploration.py","Exploration Finished!",null,new JButton[] {});
		}
	}
	
	class ShowExploreMessageThread implements Runnable{
		@Override
		public void run() {
			System.out.println(GlobalVariable.isExploring);
			while(GlobalVariable.isExploring) {
				int height = (int)(showRunningMessagePane.getBounds().getHeight());
				int width = (int)(showRunningMessagePane.getBounds().getWidth());
				String[] messageArray = ScriptOperation.runShowExploreMessage("currentATG.dot",getApkName(),"operate\\10_getInfos.py",showRunningMessagePane, 
						taShowRunningMessage,width, height);
				if( messageArray != null ) {
					txtNodeNumber.setText(messageArray[0]);
					txtEdgeNumber.setText(messageArray[1]);
				}
				try {
					Thread.sleep(3000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			System.out.println(GlobalVariable.isExploring);
		}
	}
	
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			@Override
			public void run() {
				try {
					MainPage window = new MainPage();
					window.frmLandx.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public MainPage() {
		try {
			initialize();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void initializeTaShowRunningMessage() {
		taShowRunningMessage = new JTextArea();
		taShowRunningMessage.setEditable(false);
		taShowRunningMessage.setBackground(Color.WHITE);
		taShowRunningMessage.setOpaque(true);
		showRunningMessagePane.setViewportView(taShowRunningMessage);
	}
	
	private String getApkName() {
//		System.out.println(txtChoosenApk.getText().split("\\.")[0]);
		if(txtChoosenApk.getText()!=null)
			return txtChoosenApk.getText().split("\\.")[0];
		return "";
	}
	
	private void setFileChooseCenter(JFileChooser theChooser) {
		 Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
		 theChooser.setLocation((int)(screen.getWidth()/2-theChooser.getWidth()/2), (int)(screen.getHeight()/2-theChooser.getHeight()/2));
	}
	
	private void changeChoosenApk() { 
//		txtDecompileStatus.setText("No");
//		txtInstallStatus.setText("No");
		//txtExplorationStatus.setText("No");
		txtPackageName.setText("");
		txtMainActivity.setText("");
		txtActivityNumber.setText("");
		txtNodeNumber.setText("");
		txtEdgeNumber.setText("");
		
		btnInstrument.setEnabled(false);
		btnInstall.setEnabled(false);
		btnExplore.setEnabled(false);
		btnGenerateReport.setEnabled(false);
		btnGenerateTestcase.setEnabled(false);
		btnShowDecompileResult.setEnabled(false);
//		btnViewExplorationReport.setEnabled(false);
		btnViewGeneratedTestcase.setEnabled(false);
		btnInstrumentationConfigure.setEnabled(true);
		btnExplorationConfigure.setEnabled(false);
		
		taShowRunningMessage = new JTextArea();
		showRunningMessagePane.setViewportView(taShowRunningMessage);
	}
	
	private void openExploreConfiguration() { 
		JDialog configureDialog = new ExploreConfiguration(getApkName());
//		JDialog configureDialog = new ExploreConfiguration("aa");
		configureDialog.setLocationRelativeTo(this.frmLandx);
		configureDialog.setVisible(true);
	}
	
	private void openTestGenerateConfiguration() { 
		JDialog configureDialog = new TestGeneConfiguration(getApkName());
		configureDialog.setLocationRelativeTo(this.frmLandx);
		configureDialog.setVisible(true);
	}
	
	private void openInstrumentConfiguration() { 
		JDialog configureDialog = new InstrumentConfiguration();
		configureDialog.setLocationRelativeTo(this.frmLandx);
		configureDialog.setVisible(true);
	}
	private void openFileChoose() {
		UIManager.put("FileChooser.cancelButtonText", "Cancel"); //修改取消
		UIManager.put("FileChooser.saveButtonText", "Save"); //修改保存
		UIManager.put("FileChooser.openButtonText", "Choose");//修改打开
		JFileChooser chooser = new JFileChooser(new File(GlobalVariable.basePath+"\\Apk"));
		FileNameExtensionFilter filter = new FileNameExtensionFilter(".apk","apk");
		chooser.setFileFilter(filter);
		chooser.setDialogTitle("Choose Apk");
		chooser.setLocale(Locale.ENGLISH);
		int returnVal = chooser.showOpenDialog(this.frmLandx); 
		if (returnVal == JFileChooser.APPROVE_OPTION) {  			
			String filePath = chooser.getSelectedFile().getAbsolutePath();
			if( filePath.endsWith(".apk")) {
				String[] theArray = filePath.split("\\\\");
				if( !txtChoosenApk.getText().equals("None") && !theArray[theArray.length-1].equals(txtChoosenApk.getText()) ) {
					changeChoosenApk();
				}
				else{
					btnDecompile.setEnabled(true);							
				}
				txtChoosenApk.setText(theArray[theArray.length-1]);
			}
			else{
				JOptionPane.showMessageDialog(null,"Please choose a valid apk!", "Error", JOptionPane.ERROR_MESSAGE);
			}
		}  
	}
	
	/**
	 * 预处理部分
	 */
	private void initializePreprocess() {
		
		JPanel panelPreprocess = new JPanel();
		panelPreprocess.setBounds(10, 13, 429, 270);
		TitledBorder border =  BorderFactory.createTitledBorder(BorderFactory.createEtchedBorder(),"Pre-processing",TitledBorder.CENTER,TitledBorder.CENTER); 
		panelPreprocess.setBorder(border);
		panelPreprocess.setLayout(new FlowLayout(FlowLayout.LEFT));
		frmLandx.getContentPane().add(panelPreprocess);
		
		JPanel apk_message_panel = new JPanel();
		panelPreprocess.add(apk_message_panel);
		apk_message_panel.setBorder(null);
		btnChooseApk = new JButton(" Choose  ");
		btnChooseApk.addActionListener(new ActionListener() {        
			@Override
			public void actionPerformed(ActionEvent e) {    
				if( ScriptOperation.isPythonScriptRunning() ) {
					JOptionPane.showMessageDialog(null,"Please wait for the current process to be completed!", "Warning", JOptionPane.INFORMATION_MESSAGE);
					return;
				}
				openFileChoose();
			}  
		});
		//apk_message_panel.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Choosen Apk: ");
		lblNewLabel.setPreferredSize(myLabelDimension);
		apk_message_panel.add(lblNewLabel);
		apk_message_panel.add(btnChooseApk);
		txtChoosenApk = new JTextField();
		apk_message_panel.add(txtChoosenApk);
		txtChoosenApk.setToolTipText("");
		txtChoosenApk.setHorizontalAlignment(SwingConstants.LEFT);
		txtChoosenApk.setEditable(false);
		txtChoosenApk.setText("None");
		txtChoosenApk.setColumns(10);
		
		
		JPanel decompile_status_panel = new JPanel();
		panelPreprocess.add(decompile_status_panel);
		decompile_status_panel.setLayout(new FlowLayout(FlowLayout.LEFT, 5, 5));
		
		btnDecompile = new JButton("Decompile");
		btnDecompile.setEnabled(false);
		btnDecompile.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if( txtChoosenApk.getText().equals("None"))
					JOptionPane.showMessageDialog(null,"Please choose a apk!", "Error", JOptionPane.ERROR_MESSAGE);
				else{
					String apkName = getApkName();
					BtnDecompileThread decompileThread = new BtnDecompileThread();
					new Thread(decompileThread).start();
				}
			}
		});
		
		JLabel lblDecompileStatus = new JLabel("Decompile Apk:    ");
		lblDecompileStatus.setPreferredSize(myLabelDimension);

		decompile_status_panel.add(lblDecompileStatus);
		decompile_status_panel.add(btnDecompile);
		
		btnShowDecompileResult = new JButton("View");
		decompile_status_panel.add(btnShowDecompileResult);
		btnShowDecompileResult.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				try {
					Process p = Runtime.getRuntime().exec("cmd /c start "+GlobalVariable.basePath+"\\Apk\\"+getApkName()+"\\"+getApkName());
					p.waitFor();
				} catch (IOException | InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		});
		btnShowDecompileResult.setEnabled(false);
		
		//-------------------------------------------------------
		JPanel instrument_status_panel = new JPanel();
		panelPreprocess.add(instrument_status_panel);
		
		JLabel lblInstrumentStatus = new JLabel("Instrument Apk:    ");
		lblInstrumentStatus.setPreferredSize(myLabelDimension);
		instrument_status_panel.add(lblInstrumentStatus);
		
		btnInstrumentationConfigure = new JButton("Configure");
		instrument_status_panel.add(btnInstrumentationConfigure);
		btnInstrumentationConfigure.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				openInstrumentConfiguration();
			}
		});
		
		btnInstrument = new JButton("Instrument");
		btnInstrument.setEnabled(false);
		instrument_status_panel.add(btnInstrument);
		btnInstrument.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				BtnInstrumentThread instrumentThread = new BtnInstrumentThread();
				new Thread(instrumentThread).start();
//				ScriptOperation.runPython(getApkName(), taShowRunningMessage, "operate\\2_instrument.py", "Instrument Finished!", txtInstrumentStatus, new JButton[] {btnInstall}, null);
//				ScriptOperation.runShowPicture("second.dot", getApkName(), showRunningMessagePane, taShowRunningMessage, 564, 468);
			}
		});
		
		
		
		
		//-------------------------------------------------------

		JPanel install_status_panel = new JPanel();
		panelPreprocess.add(install_status_panel);
		FlowLayout fl_install_status_panel = (FlowLayout) install_status_panel.getLayout();
		fl_install_status_panel.setAlignment(FlowLayout.LEFT);
		
		btnInstall = new JButton("Install");
		btnInstall.setEnabled(false);
		btnInstall.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if( !ScriptOperation.judgeWhetherCellphoneConnectingComputer() ) {
					JOptionPane.showMessageDialog(null,"No devices or emulator detected!", "Error", JOptionPane.ERROR_MESSAGE);
					return;
				}
				BtnInstallThread installThread = new BtnInstallThread();
				new Thread(installThread).start();
//				runPython("operate\\auto_install.py","Installation Finished",txtInstall,new JButton[] {btnExplore});
			}
		});
		
		JLabel lblInstall = new JLabel("Install Apk:");
		lblInstall.setPreferredSize(myLabelDimension);
		install_status_panel.add(lblInstall);
		install_status_panel.add(btnInstall);
		
		
		//-------------------------------------------------------
		JPanel profile_status_panel = new JPanel();
		panelPreprocess.add(profile_status_panel);
		
		JLabel lblProfileStatus = new JLabel("Generate Profile:");
		lblProfileStatus.setPreferredSize(myLabelDimension);
		profile_status_panel.add(lblProfileStatus);
		
		btnProfile = new JButton("Generate");
		profile_status_panel.add(btnProfile);
		btnProfile.setEnabled(false);
		btnProfile.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				BtnProfileThread profileThread = new BtnProfileThread();
				new Thread(profileThread).start();
			}
		});
	}
	


	/**
	 * GUI 探索
	 */
	private void initilizeMainFunction() {
		JPanel panelOperation = new JPanel();
		TitledBorder explorationBorder =  BorderFactory.createTitledBorder(BorderFactory.createEtchedBorder(),"GUI Exploration",TitledBorder.CENTER,TitledBorder.CENTER); 
		panelOperation.setBorder(explorationBorder);
		panelOperation.setBounds(10, 285, 429,90);
		panelOperation.setLayout(new FlowLayout(FlowLayout.LEFT,5,5));
		frmLandx.getContentPane().add(panelOperation);
		
		JPanel panelExplore = new JPanel();
		panelExplore.setBorder(null);
		panelOperation.add(panelExplore);
		panelExplore.setLayout(new FlowLayout(FlowLayout.LEFT, 5, 5));
		
		btnExplorationConfigure = new JButton("Configure");
		panelExplore.add(btnExplorationConfigure);
		btnExplorationConfigure.setEnabled(true);

		btnExplorationConfigure.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				openExploreConfiguration();
			}
		});
		
		btnExplore = new JButton("Start Explore");
		btnExplore.setEnabled(true);
		panelExplore.add(btnExplore);

		btnExplore.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				exploreThread = new BtnExploreThread();
				showPictureThread = new ShowExploreMessageThread();
				t1 =  new Thread(exploreThread);
				t2 =  new Thread(showPictureThread);
				if( ScriptOperation.isPythonScriptRunning() ) {
					JOptionPane.showMessageDialog(null,"Please wait for the current process to be completed!", "Warning", JOptionPane.INFORMATION_MESSAGE);
					GlobalVariable.isExploring=false;
					return;
				}
				GlobalVariable.isExploring=true;
				initializeTaShowRunningMessage();
				FileOperation.folderDelete(GlobalVariable.basePath+"\\files\\"+getApkName()+"\\Logs");
				FileOperation.folderDelete(GlobalVariable.basePath+"\\files\\"+getApkName()+"\\Screenshots");
				FileOperation.folderDelete(GlobalVariable.basePath+"\\files\\"+getApkName()+"\\Infos");
				
				t1.start();
				t2.start();
			}
		});
		
		btnExploreStop = new JButton("Stop Explore");
		btnExploreStop.addActionListener(new ActionListener() {
			@SuppressWarnings("deprecation")
			@Override
			public void actionPerformed(ActionEvent e) {
				if(t1.isAlive())
					t1.stop();
				if(t2.isAlive())
					t2.stop();
				ScriptOperation.killRunningPythonScript();
				ScriptOperation.killRunningAdb();
				
			}
		});
		panelExplore.add(btnExploreStop);
}
	
	/**
	 * 测试生成
	 */
	private void initilizeTestGeneration() {
		JPanel panelTestGeneration = new JPanel();
		panelTestGeneration.setBounds(10, 380, 429, 140);
		TitledBorder testGenerationBorder =  BorderFactory.createTitledBorder(BorderFactory.createEtchedBorder(),"Test Generation",TitledBorder.CENTER,TitledBorder.CENTER); 
		panelTestGeneration.setBorder(testGenerationBorder);
		panelTestGeneration.setLayout(new FlowLayout(FlowLayout.LEFT));
		frmLandx.getContentPane().add(panelTestGeneration);
		
		//========================================
		JPanel panelTestcase = new JPanel();
		panelTestGeneration.add(panelTestcase);
		panelTestcase.setBorder(null);
		panelTestcase.setLayout(new FlowLayout(FlowLayout.LEFT, 5, 5));
		
		btnGenerateTestcase = new JButton("Generate Test Case");
		btnGenerateTestcase.setEnabled(true);
		btnGenerateTestcase.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				openTestGenerateConfiguration();
				btnRunTestcase.setEnabled(true);
			}
		});
		panelTestcase.add(btnGenerateTestcase);
		
		btnViewGeneratedTestcase = new JButton("View Test Case");
		btnViewGeneratedTestcase.setEnabled(true);
		panelTestcase.add(btnViewGeneratedTestcase);
		btnViewGeneratedTestcase.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					if(new File(GlobalVariable.basePath+"\\files\\"+getApkName()+"\\java").exists()){
						Process p = Runtime.getRuntime().exec("cmd /c start "+GlobalVariable.basePath+"\\files\\"+getApkName()+"\\java");
						p.waitFor();
					}
				} catch (IOException | InterruptedException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		});
		//========================================
		JPanel panelRunTestCse = new JPanel();
		panelRunTestCse.setBorder(null);
		panelTestGeneration.add(panelRunTestCse);
		panelRunTestCse.setLayout(new FlowLayout(FlowLayout.LEFT, 5, 5));
		
		btnRunTestcase = new JButton("Run Test Case");
		btnRunTestcase.setEnabled(false);
		btnRunTestcase.addActionListener(new ActionListener() {
			//TODO
			@Override
			public void actionPerformed(ActionEvent arg0) {
				BtnRunTestcaseThread BtnRunTestcaseThread = new BtnRunTestcaseThread();
				new Thread(BtnRunTestcaseThread).start();
			}
		});
		panelRunTestCse.add(btnRunTestcase);
	}
	
	/**
	 * 查看结果
	 */
	private void initilizeShowResult() {
		JPanel panelViewResult = new JPanel();
		panelViewResult.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, null, null), "Report Generation", TitledBorder.CENTER, TitledBorder.TOP, null, null));
		panelViewResult.setBounds(15, 520, 429,100);
		panelViewResult.setLayout(new FlowLayout(FlowLayout.LEFT));

		frmLandx.getContentPane().add(panelViewResult);
		//======================================================
		JPanel panelReport = new JPanel();
		panelViewResult.add(panelReport);
		panelReport.setBorder(null);
		panelReport.setLayout(new FlowLayout(FlowLayout.LEFT, 5, 5));
		
		btnGenerateReport = new JButton("View Coverage Report");
		btnGenerateReport.setEnabled(false);
		btnGenerateReport.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				BtnGenerateReportThread generateReportThread = new BtnGenerateReportThread();
				new Thread(generateReportThread).start();
			}
		});
		panelReport.add(btnGenerateReport);
		//======================================================
		JPanel panelCrashReport = new JPanel();
		panelViewResult.add(panelCrashReport);
		panelCrashReport.setBorder(null);
		panelCrashReport.setLayout(new FlowLayout(FlowLayout.LEFT, 5, 5));
		
		btnGenerateCrashReport = new JButton("View Crash Report");
		btnGenerateCrashReport.setEnabled(false);
		btnGenerateCrashReport.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				BtnGenerateCrashReportThread generateReportThread = new BtnGenerateCrashReportThread();
				new Thread(generateReportThread).start();
			}
		});
		panelCrashReport.add(btnGenerateCrashReport);
	}
	
	/**
	 * APK信息
	 */
	private void initializeApkInformation() {
		JPanel panelAPKInformation = new JPanel();
		TitledBorder border =  BorderFactory.createTitledBorder(BorderFactory.createEtchedBorder(),"APK Information",TitledBorder.CENTER,TitledBorder.CENTER); 
		panelAPKInformation.setBorder(border);
		panelAPKInformation.setBounds(466, 13, 400, 180);
		panelAPKInformation.setLayout(new FlowLayout(FlowLayout.LEFT));
		frmLandx.getContentPane().add(panelAPKInformation);
		//panelAPKInformation.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 12));
		
		JPanel panelPackageName = new JPanel();
		panelAPKInformation.add(panelPackageName);
		panelPackageName.setLayout(new FlowLayout(FlowLayout.LEFT));
		
		JLabel lblPackageName = new JLabel("Package Name: ");
		lblPackageName.setPreferredSize(myLabelDimension);

		panelPackageName.add(lblPackageName);
		
		txtPackageName = new JTextField();
		txtPackageName.setEditable(false);
		panelPackageName.add(txtPackageName);
		txtPackageName.setColumns(15);
		
		JPanel panelMainActivity = new JPanel();
		panelAPKInformation.add(panelMainActivity);
		panelMainActivity.setLayout(new FlowLayout(FlowLayout.LEFT));
		
		JLabel lblMainActivity = new JLabel("Main Activity:      ");
		lblMainActivity.setPreferredSize(myLabelDimension);
		panelMainActivity.add(lblMainActivity);
		
		txtMainActivity = new JTextField();
		txtMainActivity.setEditable(false);
		txtMainActivity.setColumns(15);
		panelMainActivity.add(txtMainActivity);
		
		JPanel panelAcitivityNumber = new JPanel();
		panelAPKInformation.add(panelAcitivityNumber);
		panelAcitivityNumber.setLayout(new FlowLayout(FlowLayout.LEFT));
		
		JLabel lblActivityNumber = new JLabel("Activity Number:");
		lblActivityNumber.setPreferredSize(myLabelDimension);
		panelAcitivityNumber.add(lblActivityNumber);
		
		txtActivityNumber = new JTextField();
		
		txtActivityNumber.setEditable(false);
		txtActivityNumber.setColumns(15);
		panelAcitivityNumber.add(txtActivityNumber);
	}
	/**
	 * 模型信息
	 */
	private void initializeModelInformation() {
		JPanel panelModelInformation = new JPanel();
		panelModelInformation.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, null, null), "Model Information", TitledBorder.CENTER, TitledBorder.TOP, null, null));
		panelModelInformation.setBounds(880, 13, 340, 180);
		panelModelInformation.setLayout(new FlowLayout(FlowLayout.LEFT));

		frmLandx.getContentPane().add(panelModelInformation);
		
		JPanel panelMainActivity = new JPanel();
		panelModelInformation.add(panelMainActivity);
		panelMainActivity.setLayout(new FlowLayout(FlowLayout.LEFT));
		
		JLabel lblNodeNumber = new JLabel("Node Number:");
		lblNodeNumber.setPreferredSize(myLabelDimension);
		panelMainActivity.add(lblNodeNumber);
		
		txtNodeNumber = new JTextField();
		txtNodeNumber.setEditable(false);
		panelMainActivity.add(txtNodeNumber);
		txtNodeNumber.setColumns(10);
		
		JPanel panelMainActivity2 = new JPanel();
		panelModelInformation.add(panelMainActivity2);
		panelMainActivity2.setLayout(new FlowLayout(FlowLayout.LEFT));
		
		JLabel lblEdgeNumber = new JLabel("Edge Number:");
		lblEdgeNumber.setPreferredSize(myLabelDimension);
		panelMainActivity2.add(lblEdgeNumber);
		
		txtEdgeNumber = new JTextField();
		txtEdgeNumber.setEditable(false);
		panelMainActivity2.add(txtEdgeNumber);
		txtEdgeNumber.setColumns(10);
		
		JPanel panelMainActivity3 = new JPanel();
		panelModelInformation.add(panelMainActivity3);
		panelMainActivity2.setLayout(new FlowLayout(FlowLayout.LEFT));
		
		JLabel lblview = new JLabel("ScreenShots of Each State:     ");
		//lblview.setPreferredSize(myLabelDimension);
		panelMainActivity3.add(lblview);
		
		btnViewscreenshot = new JButton("View");
		panelMainActivity3.add(btnViewscreenshot);
		btnViewscreenshot.setEnabled(false);
		btnViewscreenshot.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				try{
					Process p = Runtime.getRuntime().exec("cmd /c start "+GlobalVariable.basePath+"\\files\\"+getApkName()+"\\Screenshots");
					p.waitFor();
				}catch (IOException | InterruptedException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		});
	}

	private void initialize() throws IOException {
		GlobalVariable.basePath = System.getProperty("user.dir");
//		GlobalVariable.basePath = "F:\\LAND";
//		System.out.println(GlobalVariable.basePath);
		
		
		FontSet fontSet = FontSets.createDefaultFontSet(
			    new Font("Dialog", Font.PLAIN, 18),    // control font
			    new Font("Dialog", Font.BOLD, 18),    // menu font
			    new Font("Dialog", Font.BOLD, 18)     // title font
			    );
		FontPolicy fixedPolicy = FontPolicies.createFixedPolicy(fontSet);
		PlasticLookAndFeel.setFontPolicy(fixedPolicy);
		
		//设置界面外观风格
		try {
			Plastic3DLookAndFeel.setCurrentTheme(new ExperienceRoyale());
			UIManager.setLookAndFeel(new Plastic3DLookAndFeel());
		} catch (Exception exc) {
			exc.printStackTrace();
		}
		
		myLabelDimension = 	new Dimension(150,20);

		frmLandx = new JFrame();
		Properties props = System.getProperties(); 
		props.put("user.language", "en"); 
		System.setProperties(props); 
		frmLandx.setTitle("LAND");
		frmLandx.setBounds(100, 100, 1250, 670);
		frmLandx.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		frmLandx.getContentPane().setLayout(null);
		frmLandx.setLocationRelativeTo(null);
		frmLandx.setResizable(true);
		
		frmLandx.addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent e){
				if(t1!=null || t2!=null){
					if(t1!=null && t1.isAlive())
						t1.stop();
					if(t1!=null && t2.isAlive())
						t2.stop();
					ScriptOperation.killRunningPythonScript();
					ScriptOperation.killRunningAdb();
				}
				System.exit(0);
			}
		});
		this.initializePreprocess();
//		this.initilizeConfiguration();
		this.initilizeTestGeneration();
		this.initilizeMainFunction();
		this.initilizeShowResult();
		this.initializeApkInformation();
		this.initializeModelInformation();
		
		showRunningMessagePane = new JScrollPane();
		showRunningMessagePane.setBounds(466, 200, 754, 420);
		//showRunningMessagePane.setBackground(Color.WHITE);
		showRunningMessagePane.setOpaque(false);
		frmLandx.getContentPane().add(showRunningMessagePane);
		
		this.initializeTaShowRunningMessage();
//		System.out.println("the width of taShowRunningMessage is: "+taShowRunningMessage.getScrollableTracksViewportWidth());
		
//		ImageOperation.setBackgroundImage(new ImageIcon("F:\\LAND\\current.png"), showRunningMessagePane, taShowRunningMessage,625,502);		
//		taShowRunningMessage = new JTextArea();
//		taShowRunningMessage.setBackground(Color.WHITE);
//		taShowRunningMessage.setForeground(Color.BLACK);
//		taShowRunningMessage.setEditable(false);
//		taShowRunningMessage.setOpaque(true);
//		showRunningMessagePane.setViewportView(taShowRunningMessage);
		
		
	}
	
}
