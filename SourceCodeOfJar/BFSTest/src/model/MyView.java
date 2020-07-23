package model;

import java.io.Serializable;

public class MyView implements Serializable{
	private static final long serialVersionUID = 2169711318413112572L;
	public int id;
	public String type;
	public int []location = new int[2];
	public boolean viewState;
	public String text="";
	public int number=0;
	public boolean isEnable;
	public boolean isClickable;
	


	@Override
	public String toString() {
		return "MyView [id=" + id + ",text=" + text + ", type=" + type+ "]";
		//+ ",text=" + text + ", type=" + type + ", viewState="+ viewState 
	}




	public MyView(int id,  String type, int[] location,
			boolean viewState, String text,  int number) {
		super();
		this.id = id;
		this.type = type;
		this.location = location;
		this.viewState = viewState;
		this.text = text;
		this.number = number;
		//this.isEnable =isEnable;
		//this.isClickable = isClickable;
	}
	
}
