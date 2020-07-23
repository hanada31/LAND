package iscas.ac.land.gui;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import iscas.ac.land.util.FileOperation;
import iscas.ac.land.util.GlobalVariable;

import javax.swing.JTextField;
import javax.swing.JList;
import javax.swing.JEditorPane;
import javax.swing.JLabel;
import java.awt.Color;
import javax.swing.JScrollBar;

public class InstrumentConfiguration extends JDialog {

	private JEditorPane editorPane;
	private JLabel label;
	private String filename = GlobalVariable.basePath+"\\profile\\label\\target.txt";
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		try {
			InstrumentConfiguration dialog = new InstrumentConfiguration();
			dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
			dialog.setVisible(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void initilizeConfiguration() {
		List<String> configureArray = FileOperation.readStreamFile(filename);
		String res ="";
		if(configureArray!=null){
			for(String s:configureArray)
				res += s+"\n";
			this.editorPane.setText(res);
		}
	}

	/**
	 * Create the dialog.
	 */
	public InstrumentConfiguration() {
		setBounds(100, 100, 450, 300);
		setTitle("Instrument Configuration");
		getContentPane().setLayout(new BorderLayout());
		{
			{
				label = new JLabel();
				getContentPane().add(label, BorderLayout.NORTH);
				label.setText("Target Labels:");
				label.setFont(new Font(getName(), 1, 18));
			}
			
			{
				editorPane = new JEditorPane();
				getContentPane().add(editorPane, BorderLayout.CENTER);
				editorPane.setFont(new Font(getName(), 0, 15));
			}
			JPanel buttonPane = new JPanel();
			buttonPane.setLayout(new FlowLayout(FlowLayout.RIGHT));
			getContentPane().add(buttonPane, BorderLayout.SOUTH);
			{
				JButton okButton = new JButton("OK");
				okButton.setActionCommand("OK");
				okButton.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent arg0) {
						clickSave();
						dispose();
					}
				});
				buttonPane.add(okButton);
				getRootPane().setDefaultButton(okButton);
			}
			{
				JButton cancelButton = new JButton("Cancel");
				cancelButton.setActionCommand("Cancel");
				cancelButton.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent arg0) {
						dispose();
					}
				});
				buttonPane.add(cancelButton);
			}
		}
	


		this.initilizeConfiguration();
	}

	protected void clickSave() {
		FileOperation.saveInstrumentConfiguration(filename, editorPane.getText());
		
	}

}
