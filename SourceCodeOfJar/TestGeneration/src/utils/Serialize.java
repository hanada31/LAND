package utils;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.Queue;

import model.Event;
import model.GUIModel;

public class Serialize implements Serializable {
	private static final long serialVersionUID = -5915255490860797754L;
	public GUIModel model = new GUIModel();// the generated GUI model
	public Queue< Event> queue = new LinkedList<Event>();// the queue for traversing <state id ,event>
	public LinkedList<Integer> visitedState = new LinkedList<Integer>();//record all id of visited states

	/**
	 * constructor
	 */
	public Serialize() {
		super();
	}

	/**
	 * overwrite tostring 
	 */
	@Override
	public String toString() {
		StringBuffer print = new StringBuffer();

		print.append("model: \n");
		print.append(model.toString()+"\n");
		
		print.append("queue: \n");
		print.append(queue.toString()+"\n");
		
		print.append("visitedState: \n");
		print.append(visitedState.toString()+"\n");
		return print.toString();
	}

}
