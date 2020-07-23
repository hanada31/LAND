package iscas.ac.land.gui;

import iscas.ac.land.util.FileOperation;
import iscas.ac.land.util.GlobalVariable;
import iscas.ac.land.util.ScriptOperation;

import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JEditorPane;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.swing.JButton;
import javax.swing.border.EmptyBorder;

class BtnGenerateTestcaseThread implements Runnable{
	int id;
	String str, apkname;
	
	public BtnGenerateTestcaseThread(String apkname, int id, String str){
		this.id = id;
		this.str = str;
		this.apkname = apkname;

	}
	@Override
	public void run() {
		try {
			System.out.println("python operate/6_test_generation.py " +apkname +" "+id+" "+str);
			Runtime.getRuntime().exec("python operate/6_test_generation.py " +apkname +" "+id+" "+str);
		} catch (IOException e) {
			e.printStackTrace();
		}	
		}
}
public class TestGeneConfiguration extends JDialog {
	private Dimension myLabelDimension;
	
	public TestGeneConfiguration(final String apkName){
		setBounds(100, 100, 1000, 500);
		myLabelDimension = 	new Dimension(700,60);
		
		setTitle("Test Generation Configuration");
//		getContentPane().setLayout(new FlowLayout(FlowLayout.LEFT));
//		{
			JPanel panel = new JPanel();
			panel.setBorder(null);
			panel.setLayout(new FlowLayout(FlowLayout.LEFT));
			getContentPane().add(panel);
			
			
			JPanel panel1 = new JPanel(new FlowLayout(FlowLayout.LEFT));
			panel.add(panel1);
			
			JPanel panel11 = new JPanel(new FlowLayout(FlowLayout.LEFT));
			panel1.add(panel11);
			JLabel act_name = new JLabel("Activity Name: ");
			
			panel11.add(act_name);
			final JComboBox act_name_input = new JComboBox();
			String[] acts = getActs(apkName);
			if(acts!=null)
			{
				act_name_input.setModel(new DefaultComboBoxModel(acts));
				panel11.add(act_name_input);
			}
			panel11.setPreferredSize(myLabelDimension);
			JButton btnNewButton_1 = new JButton("Activity Directed");
			panel1.add(btnNewButton_1);
			btnNewButton_1.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent arg0) {
					BtnGenerateTestcaseThread generateTestcaseThread = new BtnGenerateTestcaseThread(apkName, 1, act_name_input.getSelectedItem().toString());
					new Thread(generateTestcaseThread).start();
					dispose();
				}
			});
			
			
			JPanel panel2 = new JPanel();
			panel.add(panel2);
			
			JPanel panel12 = new JPanel(new FlowLayout(FlowLayout.LEFT));
			panel2.add(panel12);
			
			JLabel widget_name = new JLabel("Widget Name: ");
			panel12.add(widget_name);
			final JComboBox widget_name_input = new JComboBox();
			widget_name_input.setModel(new DefaultComboBoxModel(new String[] {"EditText", "Button", "ImageButton", "CheckBox","RadioButton"}));
			panel12.add(widget_name_input);
			panel12.setPreferredSize(myLabelDimension);
			
			JButton btnNewButton_2 = new JButton("Widget Directed");
			panel2.add(btnNewButton_2);
			btnNewButton_2.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent arg0) {
					BtnGenerateTestcaseThread generateTestcaseThread = new BtnGenerateTestcaseThread(apkName, 2,widget_name_input.getSelectedItem().toString());
					new Thread(generateTestcaseThread).start();
					dispose();
				}
			});
			
			
			JPanel panel3 = new JPanel();
			panel.add(panel3);
			JLabel label3 = new JLabel("See Labels in Instrument Congiuration. ");
			panel3.add(label3);
			label3.setPreferredSize(myLabelDimension);
			
			JButton btnNewButton_3 = new JButton("Label Directed");
			panel3.add(btnNewButton_3);
			btnNewButton_3.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent arg0) {
					BtnGenerateTestcaseThread generateTestcaseThread = new BtnGenerateTestcaseThread(apkName,3, "none");
					new Thread(generateTestcaseThread).start();
					dispose();
				}
			});
			
			JPanel panel4 = new JPanel();
			panel.add(panel4);
			JLabel label4 = new JLabel("Traverse LATTE model in DFS.");
			panel4.add(label4);
			label4.setPreferredSize(myLabelDimension);
			
			JButton btnNewButton_4 = new JButton("Graph Traverse");
			panel4.add(btnNewButton_4);
			btnNewButton_4.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent arg0) {
					BtnGenerateTestcaseThread generateTestcaseThread = new BtnGenerateTestcaseThread(apkName,4, "none");
					new Thread(generateTestcaseThread).start();
					dispose();
				}
			});
			
//			JPanel panel5 = new JPanel(new FlowLayout(FlowLayout.LEFT));
//			panel.add(panel5);
//			panel5.add(new JLabel("Traverse LATTE model in BFS."));
//			
//			JPanel panel15 = new JPanel(new FlowLayout(FlowLayout.LEFT));
//			panel.add(panel15);
//			JButton btnNewButton_5 = new JButton("BFS Traverse");
//			panel15.add(btnNewButton_5);
//			btnNewButton_5.addActionListener(new ActionListener() {
//				@Override
//				public void actionPerformed(ActionEvent arg0) {
//					BtnGenerateTestcaseThread generateTestcaseThread = new BtnGenerateTestcaseThread(5, "none");
//					new Thread(generateTestcaseThread).start();
//				}
//			});
			
			JPanel panel6 = new JPanel();
			panel.add(panel6);
			JLabel label6 = new JLabel("Record-and-Replay Exploration Scripts.");
			panel6.add(label6);
			label6.setPreferredSize(myLabelDimension);
			
			JButton btnNewButton_6 = new JButton("Record-and-Replay");
			panel6.add(btnNewButton_6);
			btnNewButton_6.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent arg0) {
					BtnGenerateTestcaseThread generateTestcaseThread = new BtnGenerateTestcaseThread(apkName,5, "none");
					new Thread(generateTestcaseThread).start();
					dispose();
				}
			});
			
//		}
		
		
	}

	private String[] getActs(String apkName) {
		String filename = GlobalVariable.basePath+"\\files\\"+apkName+"\\Infos\\getName.txt";
		if(!new File(filename).exists()) return null;
		List<String> actArray = FileOperation.readStreamFile(filename);
		String[] acts = new String[actArray.size()];
		for(int i=1; i<actArray.size();i++){
			String s =actArray.get(i).split(":")[1];
			if(s.equals("")) continue;
			acts[i-1] = s;
		}
		return acts;
		
	}
}
