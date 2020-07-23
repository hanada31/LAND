package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

public class State implements Serializable{
	private static final long serialVersionUID = -4182539792985832831L;
	public int id=0;
	public String activity_name ="";
	public List<MyView> mviews =new ArrayList<MyView>();
	public List<Event> path = new ArrayList<Event>();
	public List<Event> eventlist = new ArrayList<Event>();
	public Stack<String> stack = new Stack<String>();
	public StackOperation backStackOprations = new StackOperation("");
	public Boolean isDialog =false;
	
	public State(List<MyView> mviews){
		this.mviews = mviews;
	}
	public State(){
	}
	public State(int id, String activity_name, List<MyView> mviews, List<Event>  eventlist,  Stack<String> stack) {
		this.id = id;
		this.activity_name = activity_name;
		this.mviews = mviews;
		this.eventlist = eventlist;
		this.stack = stack;
	}
	@Override
	public String toString() {
		return "State:[id=" + id + ", activity_name=" + activity_name
				+ ".\n mviews=" + mviews + ".\n path=" + path + ".\n stack=" + stack 
				+ ".\n backStackOprations="
				+ backStackOprations + ".\n isDialog=" + isDialog + "]\n\n";
	}
	//".\n eventlist="	+ eventlist +
}
