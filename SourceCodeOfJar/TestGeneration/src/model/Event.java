package model;

import java.io.Serializable;
import java.util.ArrayList;

public class Event implements Serializable{
	private static final long serialVersionUID = 4775905013597085970L;
	public int stateId;
	public ArrayList<String> operation = new ArrayList<String>();
	public int viewid;
	
	public Event(int stateId, ArrayList<String> operation,int viewid) {
		this.stateId= stateId;
		this.operation = operation;
		this.viewid =viewid;
	}

	@Override
	public String toString() {
		return "Event [stateId=" + stateId + ", operation=" + operation
				+ ", viewid=" + viewid + "]";
	}
	
}
