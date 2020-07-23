package model;

import java.io.Serializable;

public class StackOperation implements Serializable{
	private static final long serialVersionUID = 8268097701701353523L;
	public String operation="";
	public String act_name="";
	
	public StackOperation(){
		this.operation = "";
		this.act_name = "";
	}
	
	public StackOperation(String operation, String act_name) {
		super();
		this.operation = operation;
		this.act_name = act_name;
	}
	public StackOperation(String operation) {
		super();
		this.operation = operation;
	}
	@Override
	public String toString() {
		return "StackOperation [operation=" + operation + ", act_name="
				+ act_name + "]";
	}
	
	
}
