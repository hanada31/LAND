package model;

import java.io.Serializable;

public class Transition implements Serializable{
	private static final long serialVersionUID = -2097586466986888520L;
	public State source ;
	public State destination;
	public Event event;
	public Boolean isTarget = false;
	public Boolean isStay = false;
	public Boolean isBack = false;
	public Boolean isClose = false;
	public Boolean isQuit = false;
	public Boolean isOut = false;
	public Boolean isVisited = false;

	
	@Override
	public String toString() {
		if(destination!=null)
			return "Transition [source=" + source.id + ", destination=" + destination.id
				+ ", event=" + event + ", isTarget=" + isTarget + ", isStay="
				+ isStay + ", isBack=" + isBack + ", isClose=" + isClose
				+ ", isQuit=" + isQuit + ", isOut=" + isOut + ", isVisited="
				+ isVisited + "]";
		else 
			return "Transition [source=" + source.id + ", destination=null" 
				+ ", event=" + event + ", isTarget=" + isTarget + ", isStay="
				+ isStay + ", isBack=" + isBack + ", isClose=" + isClose
				+ ", isQuit=" + isQuit + ", isOut=" + isOut + ", isVisited="
				+ isVisited + "]";
	}
	
	public Transition(State source, State destination, Event event) {
		this.source = source;
		this.destination = destination;
		this.event = event;
	}
	
}
