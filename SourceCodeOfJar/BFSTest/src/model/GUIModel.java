package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

public class GUIModel implements Serializable{
	private static final long serialVersionUID = 2774195570934110560L;
	public List<State> states = new ArrayList<State>();  //state list 
	public List<Transition> trans = new ArrayList<Transition>();//transition list
	public Stack<String> stack = new Stack<String>();
	
	/**
	 * addTransition
	 * @param t
	 */
	public void addTransition(Transition t) {
		if(!trans.contains(t))
			trans.add(t);
	}
	
	/**
	 * addState
	 * @param s
	 */
	public void addState(State s) {
		states.add(s);
	}
	/**
	 * removeState
	 * @param sameState
	 */
	public void removeState(State sameState) {
		states.remove(sameState);
	}
	
	/**
	 * getStateById
	 * @param id
	 * @return
	 */
	public State getStateById(Integer id) {
		for(State s : states)
			if(s.id == id)
				return s;
		return null;
	}
	
	/**
	 * getStateNum
	 * @return
	 */
	public int getStateNum(){
		return states.size();
	}


	@Override
	public String toString() {
		return "GUIModel:\n[states:\n " + states +  ".\n\nstack="
				+ stack + "]\n\n";
	}
	//".\n\ntrans=" + trans +
}
