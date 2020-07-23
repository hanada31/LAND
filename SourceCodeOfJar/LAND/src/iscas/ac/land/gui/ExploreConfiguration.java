package iscas.ac.land.gui;

import java.awt.BorderLayout;
import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JTextField;
import java.awt.GridLayout;
import javax.swing.border.MatteBorder;

import iscas.ac.land.util.FileOperation;
import iscas.ac.land.util.GlobalVariable;

import java.awt.Color;
import java.awt.SystemColor;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.awt.event.ActionEvent;

public class ExploreConfiguration extends JDialog {

	private String apkName;
	private final JPanel contentPanel = new JPanel();
	
	private JComboBox cbbTestMode;
	private JComboBox cbbEditTextType;
	private JComboBox cbbButtonLongClick;
	private JComboBox cbbTextLongClick;
	private JComboBox cbbListVisit;
	private JComboBox cbbClickType;

	private JTextField txtEnterTime;
	private JTextField txtSleepTime;
	private JTextField txtSmallSleepTime;
	private JTextField txtGivenStr;
	private JTextField txtSimilarity;
	
//	public static void main(String[] args) {
//		try {
//			GlobalVariable.basePath="F:\\LAND";
//			ExploreConfiguration dialog = new ExploreConfiguration("aGrep");
//			dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
//			dialog.setVisible(true);
//			dialog.setResizable(false);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	private void saveConfigure() {
		Map<String,String> configureMap = new HashMap<String,String>();
		configureMap.put("testMode",this.cbbTestMode.getSelectedItem().toString().split(" ")[1]);
		configureMap.put("editTextType", this.cbbEditTextType.getSelectedItem().toString());
		configureMap.put("enterTime", "10");
		configureMap.put("givenStr", this.txtGivenStr.getText());
		configureMap.put("Similarity", this.txtSimilarity.getText());
		configureMap.put("isButtonLongClick", this.cbbButtonLongClick.getSelectedItem().toString().equals("Yes")?"1":"0");
		configureMap.put("isTextLongClick", this.cbbTextLongClick.getSelectedItem().toString().equals("Yes")?"1":"0");
		configureMap.put("listVisit", this.cbbListVisit.getSelectedItem().toString());
		configureMap.put("clickType", this.cbbClickType.getSelectedItem().toString());
		configureMap.put("launchtime", this.txtSleepTime.getText());
		configureMap.put("smallsleeptime", this.txtSmallSleepTime.getText());
		FileOperation.saveExploreConfiguration(GlobalVariable.basePath+"\\profile\\"+this.apkName+"\\profile.txt", configureMap);
	}
	
	/**
	 * 时间应该在1-9999之间
	 * @param input
	 * @return
	 */
	private boolean isTimeValid(String input) {
		String regEx = "[1-9][0-9]{0,3}";
	    Pattern pattern = Pattern.compile(regEx);
	    Matcher matcher = pattern.matcher(input);
	    return matcher.matches();
	}

	private boolean isEnterTimeValid() {
		return this.isTimeValid(this.txtEnterTime.getText());
	}
	
	private boolean isSleepTimeValid() {
		return this.isTimeValid(this.txtSleepTime.getText());
	}
	
	private boolean isGivenStrValid() {
		String regEx="[0-9a-zA-Z]";
		Pattern pattern = Pattern.compile(regEx);
	    Matcher matcher = pattern.matcher(this.txtGivenStr.getText());
//	    return matcher.matches();
	    return true;
	}
	
	private boolean isSimilarityValid() {
		String zeroRegEx="^(0|(0.(0{1,2})))";
		Pattern pattern = Pattern.compile(zeroRegEx);
	    Matcher matcher = pattern.matcher(this.txtSimilarity.getText());
	    if( matcher.matches() )
	    	return false;
		String regEx="^(0.([0-9]{1}|[0-9]{2}))";
		pattern = Pattern.compile(regEx);
	    matcher = pattern.matcher(this.txtSimilarity.getText());
	    return matcher.matches();
	}
	
	
	private void initilizeConfiguration() {
		String[] configureArray = FileOperation.readExploreConfiguration(GlobalVariable.basePath+"\\profile\\"+this.apkName+"\\profile.txt", 11);
//		System.out.println(configureArray);
		if( configureArray != null) {
			this.cbbTestMode.setSelectedItem("mode " + configureArray[0]);
			this.cbbEditTextType.setSelectedItem(configureArray[1]);
			if( configureArray[2].equals("1"))
				this.cbbButtonLongClick.setSelectedItem("Yes");
			else if( configureArray[2].equals("0"))
				this.cbbButtonLongClick.setSelectedItem("No");
			if( configureArray[3].equals("1"))
				this.cbbTextLongClick.setSelectedItem("Yes");
			else if( configureArray[3].equals("0"))
				this.cbbTextLongClick.setSelectedItem("No");
			this.cbbListVisit.setSelectedItem(configureArray[4]);
			this.cbbClickType.setSelectedItem(configureArray[5]);
			
//			this.txtEnterTime.setText(configureArray[6]);
			this.txtSmallSleepTime.setText(configureArray[7]);
			this.txtSleepTime.setText(configureArray[10]);
			this.txtGivenStr.setText(configureArray[8]);
			this.txtSimilarity.setText(configureArray[9]);
		}
		this.cbbEditTextTypeItemChange();
	}
	
	private void clickSave() {
//		if( this.txtEnterTime.isEnabled() && !this.isEnterTimeValid()) {
//			JOptionPane.showMessageDialog(null,"Waiting time must be an integer which is larger than 0ms and smaller than 9999ms", "Error", JOptionPane.INFORMATION_MESSAGE);
//			return;
//		}
		if( this.txtSleepTime.isEnabled() && !this.isSleepTimeValid()) {
			JOptionPane.showMessageDialog(null,"Sleep time must be an integer which is larger than 0ms and smaller than 9999ms", "Error", JOptionPane.INFORMATION_MESSAGE);
			return;
		}
		if( !this.isSimilarityValid() ) {
			JOptionPane.showMessageDialog(null,"Similarity must be a decimal with at most two valid numbers which is between 0.01 and 0.99", "Error", JOptionPane.INFORMATION_MESSAGE);
			return;
		}
		this.saveConfigure();
		JOptionPane.showMessageDialog(null,"Configuration has been saved!", "Success", JOptionPane.INFORMATION_MESSAGE);
	}
	
	private void cbbEditTextTypeItemChange() {
		if(cbbEditTextType.getSelectedItem().equals("random")) {
			this.txtGivenStr.setEnabled(false);
//			this.txtEnterTime.setEnabled(false);
		}
		else if( cbbEditTextType.getSelectedItem().equals("given")) {
			this.txtGivenStr.setEnabled(true);
//			this.txtEnterTime.setEnabled(false);
		}
		else if( cbbEditTextType.getSelectedItem().equals("manual")) {
			this.txtGivenStr.setEnabled(false);
//			this.txtEnterTime.setEnabled(true);
		}
	}
	
	private void clickClose() {
		this.setVisible(false);
	}

	/**
	 * Create the dialog.
	 */
	public ExploreConfiguration(String apkName) {
		this.setModal(true);
		this.apkName = apkName;
		setTitle("Explore Configuration");
		setBounds(100, 100, 700, 350);
		getContentPane().setLayout(new BorderLayout());
		contentPanel.setBorder(new EmptyBorder(1, 1, 1, 1));
		getContentPane().add(contentPanel, BorderLayout.CENTER);
		contentPanel.setLayout(new GridLayout(0, 2, 0, 0));
		
		//-----------------------------------------------
		JPanel panelTestMode = new JPanel();
		panelTestMode.setBorder(new MatteBorder(1, 1, 1, 1, (Color) SystemColor.scrollbar));
		contentPanel.add(panelTestMode);
		panelTestMode.setLayout(new FlowLayout(FlowLayout.LEFT, 5, 5));
		
		JLabel lblTestMode = new JLabel("Test Mode:");
		panelTestMode.add(lblTestMode);
		
		cbbTestMode = new JComboBox();
		cbbTestMode.setModel(new DefaultComboBoxModel(new String[] {"mode 1", "mode 2", "mode 3", "mode 4"}));
		panelTestMode.add(cbbTestMode);
		
		//-----------------------------------------------
		JPanel panelEditTextType = new JPanel();
		FlowLayout flowLayout_4 = (FlowLayout) panelEditTextType.getLayout();
		flowLayout_4.setAlignment(FlowLayout.LEFT);
		panelEditTextType.setBorder(new MatteBorder(1, 0, 1, 1, (Color) SystemColor.scrollbar));
		contentPanel.add(panelEditTextType);
		
		JLabel lblSimilarity = new JLabel("Similarity:");
		panelEditTextType.add(lblSimilarity);
		
		txtSimilarity = new JTextField();
		txtSimilarity.setText("0.8");
		panelEditTextType.add(txtSimilarity);
		txtSimilarity.setColumns(10);
		
		
		//-----------------------------------------------
		JPanel panelSleepTime = new JPanel();
		FlowLayout fl_panelSleepTime = (FlowLayout) panelSleepTime.getLayout();
		fl_panelSleepTime.setAlignment(FlowLayout.LEFT);
		panelSleepTime.setBorder(new MatteBorder(0, 0, 1, 1, (Color) SystemColor.scrollbar));
		contentPanel.add(panelSleepTime);
		
		JLabel lblSleepTime = new JLabel("Launch Time:");
		panelSleepTime.add(lblSleepTime);
		
		txtSleepTime = new JTextField();
		txtSleepTime.setText("1000");
		txtSleepTime.setColumns(10);
		panelSleepTime.add(txtSleepTime);
		
		//-----------------------------------------------
		JPanel panelSmallSleepTime = new JPanel();
		FlowLayout f2_panelSleepTime = (FlowLayout) panelSmallSleepTime.getLayout();
		f2_panelSleepTime.setAlignment(FlowLayout.LEFT);
		panelSmallSleepTime.setBorder(new MatteBorder(0, 0, 1, 1, (Color) SystemColor.scrollbar));
		contentPanel.add(panelSmallSleepTime);
		
		JLabel lblSmallSleepTime = new JLabel("Small Sleep Time:");
		panelSmallSleepTime.add(lblSmallSleepTime);
		
		txtSmallSleepTime = new JTextField();
		txtSmallSleepTime.setText("100");
		txtSmallSleepTime.setColumns(10);
		panelSmallSleepTime.add(txtSmallSleepTime);
		
		//-----------------------------------------------
		JPanel panelButtonLongClick = new JPanel();
		FlowLayout flowLayout_1 = (FlowLayout) panelButtonLongClick.getLayout();
		flowLayout_1.setAlignment(FlowLayout.LEFT);
		panelButtonLongClick.setBorder(new MatteBorder(0, 1, 1, 1, (Color) SystemColor.scrollbar));
		contentPanel.add(panelButtonLongClick);
		
		JLabel lblButtonLongClick = new JLabel("Long Click Button:");
		panelButtonLongClick.add(lblButtonLongClick);
		
		cbbButtonLongClick = new JComboBox();
		cbbButtonLongClick.setModel(new DefaultComboBoxModel(new String[] {"Yes", "No"}));
		panelButtonLongClick.add(cbbButtonLongClick);
		
		//-----------------------------------------------
		JPanel panelTextLongClick = new JPanel();
		FlowLayout flowLayout_6 = (FlowLayout) panelTextLongClick.getLayout();
		flowLayout_6.setAlignment(FlowLayout.LEFT);
		panelTextLongClick.setBorder(new MatteBorder(0, 0, 1, 1, (Color) SystemColor.scrollbar));
		contentPanel.add(panelTextLongClick);
		
		JLabel lblTextLongClick = new JLabel("Long Click Text:");
		panelTextLongClick.add(lblTextLongClick);
		
		cbbTextLongClick = new JComboBox();
		cbbTextLongClick.setModel(new DefaultComboBoxModel(new String[] {"Yes", "No"}));
		panelTextLongClick.add(cbbTextLongClick);
		
		//-----------------------------------------------
		JPanel panelListVisit = new JPanel();
		FlowLayout flowLayout_2 = (FlowLayout) panelListVisit.getLayout();
		flowLayout_2.setAlignment(FlowLayout.LEFT);
		panelListVisit.setBorder(new MatteBorder(0, 1, 1, 1, (Color) SystemColor.scrollbar));
		contentPanel.add(panelListVisit);
		
		JLabel lblListVisit = new JLabel("List Visit:");
		panelListVisit.add(lblListVisit);
		
		cbbListVisit = new JComboBox();
		cbbListVisit.setModel(new DefaultComboBoxModel(new String[] {"first", "each"}));
		panelListVisit.add(cbbListVisit);
		
		//-----------------------------------------------
		JPanel panelClickType = new JPanel();
		FlowLayout flowLayout_7 = (FlowLayout) panelClickType.getLayout();
		flowLayout_7.setAlignment(FlowLayout.LEFT);
		panelClickType.setBorder(new MatteBorder(0, 0, 1, 1, (Color) SystemColor.scrollbar));
		contentPanel.add(panelClickType);
		
		JLabel lblClickType = new JLabel("Click Type:");
		panelClickType.add(lblClickType);
		
		cbbClickType = new JComboBox();
		cbbClickType.setModel(new DefaultComboBoxModel(new String[] {"point", "view"}));
		panelClickType.add(cbbClickType);
		
	
		//-----------------------------------------------
		JPanel panelSimilarity = new JPanel();
		FlowLayout flowLayout_8 = (FlowLayout) panelSimilarity.getLayout();
		flowLayout_8.setAlignment(FlowLayout.LEFT);
		panelSimilarity.setBorder(new MatteBorder(0, 0, 1, 1, (Color) SystemColor.scrollbar));
		contentPanel.add(panelSimilarity);
		
		JLabel lblEditTextType = new JLabel("Edit Text Type:");
		panelSimilarity.add(lblEditTextType);
		
		cbbEditTextType = new JComboBox();
		panelSimilarity.add(cbbEditTextType);
		cbbEditTextType.setModel(new DefaultComboBoxModel(new String[] {"random", "given", "manual"}));
		cbbEditTextType.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent arg0) {
				// TODO Auto-generated method stub
				cbbEditTextTypeItemChange();
			}
		});
		
//		//-----------------------------------------------
//		JPanel panelEnterTime = new JPanel();
//		FlowLayout flowLayout = (FlowLayout) panelEnterTime.getLayout();
//		flowLayout.setAlignment(FlowLayout.LEFT);
//		panelEnterTime.setBorder(new MatteBorder(0, 1, 1, 1, (Color) SystemColor.scrollbar));
//		contentPanel.add(panelEnterTime);
//		
//		JLabel lblEnterTime = new JLabel("Waiting Time:");
//		panelEnterTime.add(lblEnterTime);
//		
//		txtEnterTime = new JTextField();
//		panelEnterTime.add(txtEnterTime);
//		txtEnterTime.setColumns(10);
		
		//-----------------------------------------------
		JPanel panelGivenStr = new JPanel();
		FlowLayout fl_panelGivenStr = (FlowLayout) panelGivenStr.getLayout();
		fl_panelGivenStr.setAlignment(FlowLayout.LEFT);
		panelGivenStr.setBorder(new MatteBorder(0, 1, 1, 1, (Color) SystemColor.scrollbar));
		contentPanel.add(panelGivenStr);
		
		JLabel lblGivenStr = new JLabel("Given Str:");
		panelGivenStr.add(lblGivenStr);
		
		txtGivenStr = new JTextField();
		txtGivenStr.setText("*#123");
		txtGivenStr.setColumns(15);
		panelGivenStr.add(txtGivenStr);
		
		//-----------------------------------------------

		{
			JPanel buttonPane = new JPanel();
			buttonPane.setLayout(new FlowLayout(FlowLayout.RIGHT));
			getContentPane().add(buttonPane, BorderLayout.SOUTH);
			{
				JButton okButton = new JButton("Save");
				okButton.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent arg0) {
						clickSave();
						dispose();
					}
				});
				okButton.setActionCommand("OK");
				buttonPane.add(okButton);
				getRootPane().setDefaultButton(okButton);
			}
			{
				JButton cancelButton = new JButton("Cancel");
				cancelButton.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent arg0) {
						clickClose();
					}
				});
				cancelButton.setActionCommand("Cancel");
				buttonPane.add(cancelButton);
			}
		}
		this.initilizeConfiguration();
	}
}
