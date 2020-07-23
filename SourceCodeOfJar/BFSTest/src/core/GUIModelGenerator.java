package core;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.Stack;

import model.Event;
import model.GUIModel;
import model.MyView;
import model.StackOperation;
import model.State;
import model.Transition;
import utils.Constant;
import utils.IO;
import utils.MyLog;
import utils.MyRandom;
import utils.Profile;
import utils.Serialize;
import utils.Utils;
import android.app.Activity;
import android.provider.CalendarContract.Instances;
import android.text.InputType;

import android.util.Pair;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsSeekBar;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.Spinner;
import android.widget.TextView;

import com.robotium.solo.Solo;

public class GUIModelGenerator {
	Solo solo;
	GUIModel model;// the generated GUI model
	Queue< Event> queue;// the queue for traversing <state id ,event>
	LinkedList<Integer> visitedState;//record all id of visited states
	Serialize tempSer;
	Map<String, String> manifestStartFlag;
	int testMode;
	int lastStateId;
	int failNum;
	Event last_e,last_2e;
	//static String SER_PATH = "";
	
	/**
	 * prepare for write sdcard file --Robotium need.
	 * @date 0324
	 */
	public void prepare() {
		IO.initFiles();
	}
	
	/**
	 * constructor
	 */
	public GUIModelGenerator(Solo solo) {
		this.solo = solo;
	}
	public GUIModelGenerator() {
	}
	
	/**
	 * generatGUIModel
	 */
	@SuppressWarnings("unchecked")
	public void generatGUIModel() {
		initial(); // initialize the generator
		State backSameState =null;
		while(!queue.isEmpty()) {
			Event e = queue.peek();
			MyLog.log(e.toString());
			if(last_2e!=null && last_2e.operation.toString().equals(e.operation.toString())){
				queue.poll();
				e = queue.peek();
				last_2e=null;
				MyLog.log("last_2e ==e");
			}else if(last_e!=null && last_e.operation.toString().equals(e.operation.toString())){
				last_2e=e;
				MyLog.log("last_e ==e");
			}
			last_e= e;
			State oldState = model.getStateById(e.stateId);
			Transition tran = new Transition(oldState, null, e);
			
			//check one state visited or nots
			checkVisitedState(e);
			//saveTempInfo();
			// drive the app to the specific state oldState
			//time consuming
			Boolean isSuccTurn = turnToGivenState(backSameState, oldState);
			MyLog.log("trun "+ isSuccTurn+"");
			saveTempInfo();
			
			if(!isSuccTurn){
//				if(++failNum>1) {
//					queue.poll();
//					failNum=0;
//				}
				return;
			}
//			else {
//				failNum=0;
//				queue.poll();
//			}
			queue.poll();
			Activity actBeforeHandle = solo.getCurrentActivity();
			int eventFlag = executeEvent(e);// execute the event op1	
			String logs = MyLog.getLogcatInfo();
			tran.isTarget = isTargetTran(logs);
			
			if(checkQuit(actBeforeHandle, oldState, tran)) return;
			//if(checkClose(actBeforeHandle, oldState, tran)) return;
			if(checkOut(tran, oldState)) return;
			
			//create a current state
			State newState = getCurrentState();
						
			//do not delete!!!!!!!!!! 
			updateStackUsingLogs(logs,newState); //112
			MyLog.clearLog();			
			
			Activity actAfterHandle = solo.getCurrentActivity();
			//get its similar old state
			Pair<State,Double> pa = getSimilarState(newState,true);
			
			if(pa==null) return;
			State sameState = pa.first;
			//MyLog.log("new "+newState.mviews.toString());
			printSameState(sameState);
			double maxSimilarity = pa.second;
			
			//same with oldstate 
			if(sameState!=null && sameState.id==oldState.id ){  
				if(testMode==1 || testMode==2 || Utils.isArrayListSame(newState.stack, oldState.stack)){
				model.getStateById(oldState.id).mviews = newState.mviews;
				MyLog.log("6stay(" + oldState.activity_name);
				backSameState= new State();
				backSameState.id = oldState.id;
				tran.isStay=true;
				tran.destination=oldState;
				model.addTransition(tran);
				continue;
				}
			}
			
			//update model
			if(sameState == null){
				//updates path 
				List<Event> path = new ArrayList<Event>(oldState.path);
				path.add(e);
				newState.path =path;
				//new state, update model
				model.addState(newState);
				tran.destination=newState;
				MyLog.log("3new(" + newState.activity_name);
				// add candidate events to queue
				updateListToQueue(newState.eventlist);
			}else{
				//old state, update same state
				if(maxSimilarity<1){
					newState.path =sameState.path;
					model.removeState(sameState);
					newState.id=sameState.id;
					model.addState(newState);
					tran.destination=newState;
				}else{
					tran.destination=sameState;
				}
				MyLog.log("4old(" + newState.activity_name);
			}
			model.addTransition(tran);
			if(eventFlag==0) return;
			goBack();//op2
			if (appQuit(actAfterHandle))  { //special cases
				return;
			}
			logs = MyLog.getLogcatInfo();
			State backState = getCurrentState();
			if(backState==null) return;
			//do not delete
			updateStackUsingBackLogs(logs,backState, newState); //112
			MyLog.clearLog();
			
			if(checkSimilarity(backState, oldState)<0.9){
				return;
			}
			backSameState= new State();
			backSameState.id = oldState.id;
		}
		
		if(queue.size()==0){
			MyLog.isFinish("finish");
			if(!visitedState.contains(lastStateId))
				visitedState.add(lastStateId);
		}
	}


	/**
	 * checkClose
	 * @param actBeforeHandle
	 * @param oldState
	 * @param tran
	 */
	private boolean checkClose(Activity actBeforeHandle, State oldState, Transition tran) {
		if (isActClose(actBeforeHandle)){ //special cases
			MyLog.log("7close(" + oldState.activity_name );
			MyLog.log(getCurrentActName());
			tran.isClose=true;
			tran.isBack=true;
			model.addTransition(tran);
			//return;
			if(model.stack.size()==1){
				return true;
			}else{
				model.stack.pop();
				MyLog.log("stack pop"+model.stack);
			}
		}
		return false;
	}

	/**
	 * checkQuit
	 * @param actBeforeHandle
	 * @param oldState
	 * @param tran
	 */
	private boolean checkQuit(Activity actBeforeHandle, State oldState, Transition tran) {
		if (appQuit(actBeforeHandle))  { //special cases
			MyLog.log("5quit(" +oldState.activity_name );//!!!!!!!!!!
			tran.isQuit=true;
			model.addTransition(tran);
			return true;
		}
		return false;
	}

	/**
	 * checkOut
	 * @param tran
	 * @param oldState
	 */
	private boolean checkOut(Transition tran, State oldState) {
		if(getViews().size()==0){
			tran.isOut=true;
			model.addTransition(tran);
			MyLog.log("8out(a_" + oldState.activity_name);
			return true;
		}else if(getCurrentActName().equals("")){
			tran.isOut=true;
			model.addTransition(tran);
			MyLog.log("8out(b_" + oldState.activity_name);
			return true;
		}
		return false;
	}

	private void checkVisitedState(Event e) {
		if(lastStateId!=0 && e.stateId!=lastStateId)
			visitedState.add(lastStateId);
		lastStateId = e.stateId;
	}

	/**
	 * updateListToQueue
	 * @param eventlist
	 */
	private void updateListToQueue(List<Event> eventlist) {
		for(Event e1 : eventlist) {
			queue.add(e1);
		}
		
	}

	/**
	 * printSameState info
	 * @param sameState
	 */
	private void printSameState(State sameState) {
		if(sameState != null){
			MyLog.log("sameState "+sameState.id); 
			//MyLog.log("same "+sameState.mviews.toString());
		}
		else{
			MyLog.log("sameState null");
		}
	}
	

	/**
	 * update stack according to logs
	 * @param logs
	 * @param newState
	 */
	@SuppressWarnings("unchecked")
	private void updateStackUsingLogs(String logs, State newState) {
		String[] lines = logs.split("\n");
		for(String line : lines){
			if(line.contains(Constant.STARTACTIVITY)||line.contains(Constant.STARTACTIVITY2)){
				MyLog.log("STARTACTIVITY ");
				handleStartAct(newState);
				MyLog.log("model.stack"+model.stack);
			}else if (!model.stack.isEmpty() && line.contains(Constant.ACTIVITYFINISH)){
				model.stack.pop();
				MyLog.log("stack pop"+model.stack);
				MyLog.log("ACTIVITYFINISH");
			}
		}
		newState.stack = (Stack<String>) model.stack.clone();
	}
	
	/**
	 * updateStackUsingBackLogs
	 * @param logs
	 * @param backState
	 */
	@SuppressWarnings("unchecked")
	private void updateStackUsingBackLogs(String logs, State backState, State newState) {
		if(isOnBackPressed(logs)){
			updateStackUsingLogs(logs, backState);
		}else{
			if(!backState.activity_name.equals( newState.activity_name)){
				MyLog.log(backState.activity_name+"  "+newState.activity_name);
				if(!model.stack.isEmpty()) {
					model.stack.pop();
				 	MyLog.log("stack pop"+model.stack);
				}
			}
		}
		backState.stack = (Stack<String>) model.stack.clone();
	}
	
	/**
	 * handleStartAct
	 * @param newState
	 */
	private void handleStartAct(State newState) {
		int flag = solo.getCurrentActivity().getIntent().getFlags();
		MyLog.log(newState.activity_name+" aa");
		int lanuchMode = getLanuchMode(flag, newState.activity_name);
		MyLog.log("flag "+flag+", lanuchMode "+lanuchMode);
		List<StackOperation> stackOp1 = getLanuchStackOperation(lanuchMode, newState.activity_name);
		MyLog.log("stackOp1 "+stackOp1.toString());
		changeStack(stackOp1, model.stack);
	}


	//--------------------------------------init and save---------------------------------//
	private void initial() {
		testMode = Profile.getTestMode();
		//MyLog.log("testMode:"+testMode);
		manifestStartFlag = Utils.getManifestStartFlag(); 
		//MyLog.log(manifestStartFlag.toString());
		tempSer = IO.getTempSer(tempSer);
		solo.sleep(Profile.getSleepTime());
		if (tempSer == null) // first run
			InitSer();
		else // not first run
			readFromSer();
		MyLog.clearLog();
	}
	
	/**
	 * Init Serialize  
	 * @date 0324
	 */
	private void InitSer() {
		MyLog.log("file empty......");
		tempSer = new Serialize();
		model = new GUIModel();
		queue = new LinkedList<Event>();
		visitedState = new LinkedList<Integer>();
		lastStateId = 0;
		failNum=0;
		InitMainState();
		last_e=null;
		last_2e=null;
	}
	
	/**
	 * InitMainState
	 * @date 0324
	 */
	private void InitMainState() {
		MyLog.log("init main");
		String act = getCurrentActName();
		ArrayList<View> views = getViews();
		ArrayList<MyView> myViews = viewsToMyViews(views);
		ArrayList<Event> events = viewsToMyEvents(model.getStateNum()+1,views);
		model.stack.push(act);
		updateListToQueue(events); 
		State main = new State(model.getStateNum()+1, act, myViews, events,(Stack<String>) model.stack.clone());
		model.addState(main);
		MyLog.log("end init main");
	}

	/**
	 * readFromSer
	 * @date 0324
	 */
	private void readFromSer() {
		MyLog.log("file not empty...");
		this.model = tempSer.model;
		this.queue = tempSer.queue;
		this.visitedState = tempSer.visitedState;
		this.lastStateId = tempSer.lastStateId;
		this.failNum = tempSer.failNum;
		this.testMode = tempSer.testMode;
		this.last_e = tempSer.last_e;
		this.last_2e = tempSer.last_2e;
	}
	
	/**
	 * save info to file when one turn finish
	 * @date 0324
	 */
	public void saveTempInfo() {
		tempSer.model = this.model;
		tempSer.queue = this.queue;
		tempSer.visitedState = this.visitedState;
		tempSer.lastStateId = this.lastStateId;
		tempSer.failNum = this.failNum;
		tempSer.testMode = this.testMode;
		tempSer.last_e = this.last_e;
		tempSer.last_2e = this.last_2e;
		IO.writeSerToFile(tempSer);
	}
	public void saveInfo() {
		MyLog.log("saveInfo");
		tempSer.model = this.model;
		tempSer.queue = this.queue;
		tempSer.visitedState = this.visitedState;
		tempSer.lastStateId = this.lastStateId;
		tempSer.failNum = this.failNum;
		tempSer.testMode = this.testMode;
		tempSer.last_e = this.last_e;
		tempSer.last_2e = this.last_2e;
		IO.writeSerToFile(tempSer);
		if(visitedState.size()>0)
			MyLog.mainAct(model.getStateById(visitedState.get(0)).activity_name); 
		MyLog.logOnlyFile("tempSer:\n" + tempSer.toString());		
	}
	
	
	//--------------------------------------about states---------------------------------//
	/**
	 * getCurrentState
	 * @return
	 */
	private State getCurrentState() {
		String act = getCurrentActName();
		ArrayList<View> views = getViews();
		if(views.size()==0) return null;
		ArrayList<MyView> myViews = viewsToMyViews(views);
		ArrayList<Event> events = viewsToMyEvents(model.getStateNum()+1,views);
		State state = new State(model.getStateNum()+1,act,myViews, events, (Stack<String>) model.stack.clone());
		state.isDialog = Utils.isDialog(getViews());
		return state;
	}
	
	/**
	 * getSimilarState 
	 * @param newState
	 */
	//??????????null?
	private Pair<State,Double> getSimilarState(State newState, boolean isStack) {
		if(newState==null) return new Pair<State, Double>(null,0.0);
		// check similarity
		State sameState = null;
		double maxSimilarity = 0;
		//get the most similar state
		for(State s: model.states){
			if(s.activity_name.equals(newState.activity_name)){
				if(testMode==3 || testMode==4){
					//in mode 1 and 2, ignore stack check
					if(isStack && !Utils.isArrayListSame(s.stack, newState.stack)) continue;
				}
				double sim = checkSimilarity(s, newState);
				//MyLog.log("sim "+sim);
				if(sim >= Profile.getSimilarityProfile() && sim >= maxSimilarity){
					sameState = s;
					maxSimilarity = sim;
					//MyLog.log("maxSimilarity "+maxSimilarity);
				}
				
			}
		}
		return new Pair<State, Double>(sameState,maxSimilarity);
	}
	
	/**
	 * turnToGivenState
	 * @param s
	 * @return
	 */
	private Boolean turnToGivenState(State s1 , State s2) {
//		if(s1!=null){//start not from main state
//		MyLog.log("turnToGivenState "+s1.id+" to "+s2.id);
//		if(s1.id ==s2.id) return true;
//		else{
//			//TODO find a path from s1 to s2!!!
//			for(int i=0; i<=model.stack.size();i++){
//				if(i==model.stack.size()) return false;
//				MyLog.log("path go back" + model.stack.toString());
//				goBack();
//				if (appQuit(solo.getCurrentActivity()))  { //special cases
//					return false;
//				}
//				State backState = getCurrentState();
//				if(checkSimilarity(backState, model.getStateById(1))>0.9){ 
//					break;
//				}
//			}
//		}
//	}
//	MyLog.clearLog();
//	MyLog.log("turnToGivenState main to "+s2.id);
//	List<Event> path = s2.path;
//	for(Event e:path)
//		executeEvent(e);
//	model.stack = (Stack<String>) s2.stack.clone(); 
//	MyLog.clearLog();
//	return true;
	model.stack = (Stack<String>) s2.stack.clone(); 
	if(s1==null){//start from main state
		MyLog.log("turnToGivenState null to "+s2.id);
		List<Event> path = s2.path;
		for(Event e:path)
			executeEvent(e);
		MyLog.clearLog();
	}else{
		MyLog.log("turnToGivenState "+s1.id+" to "+s2.id);
		if(s1.id ==s2.id) return true;
		else{
			return false;
		}
	}
	return true;
	}
	
	
	//--------------------------------------about views---------------------------------//
	
	/**
	 * getViews from current act
	 * @return
	 */
	private ArrayList<View> getViews() {
		ArrayList<View> currentViews = solo.getCurrentViews();
		for(int i=currentViews.size()-1;i>=0;i--){
			View v= currentViews.get(i);
			
			String type = Utils.getTypeOfView(v);
			if(type.contains("Layout") || type.contains("ViewGroup")
					|| type.contains("ViewStub") ||type.contains("android.support.")){
				// -1==v.getId() ||
				currentViews.remove(i);
			}
			//MyLog.log("add+" +v.getId()+" "+ v.getClass().getName() );
		}
		return currentViews;
	}
	
	/**
	 * transfer view list To myView list !!!!!
	 * @param views
	 * @return
	 */
	private ArrayList<MyView> viewsToMyViews(ArrayList<View> views) {
		ArrayList<MyView> myviews = new ArrayList<MyView>();
		for(View view: views){
			int id = view.getId();
			String type = Utils.getTypeOfView(view);
			boolean state = Utils.getStateOfView(view);
			int []location = Utils.getLocationOfView(view);
			String text = Utils.getTextOfView(view);
			int number = Utils.getNumOfView(view);
			//boolean isEnable =view.isEnabled();
			//boolean isClickable = view.isClickable();
			MyView mv = new MyView(id,  type, location,	state, text, number);
			myviews.add(mv);
			
		}
		return myviews;
	}
	

	//--------------------------------------about events---------------------------------//
	/**
	 * viewsToMyEvents !!!!!
	 * @param views, stateName
	 * @return
	 */
	private ArrayList<Event> viewsToMyEvents(int stateId, ArrayList<View> views) {
		ArrayList<Event> events = new ArrayList<Event>();
		String text ="";
		Set<String> set = new HashSet<String>();
		for(View view: views){
			int []pos = Utils.getLocationOfView(view);
			String loc = pos[0] + "," + pos[1];
			if((pos[0]==0 && pos[1]==0) ||set.contains(loc)){
				continue;
			}
			set.add(loc);
			//MyLog.log("add "+loc);
			String viewType = Utils.getTypeOfView(view);
			if (view instanceof EditText) {
				ArrayList<String> operation = new ArrayList<String>();
				EditText edt = (EditText) view;
					operation.add(Constant.CLEAREDITTEXT);
					if(Profile.getClickType().equals(Constant.POINT))
						operation.add(Constant.CLICKONSCREEN+":" +loc);
					else
						operation.add(Constant.CLICKONVIEW+":"+view.getId());
				if (Profile.getEditTextType().equals(Constant.MANUAL)) {
					operation.add(Constant.SLEEPEDITTIME);
					operation.add(Constant.GETEDITTEXT);
				} else if (Profile.getEditTextType().equals(Constant.RANDOM)) {
					int type = edt.getInputType();
					int cls = type & InputType.TYPE_MASK_CLASS;
					int randomLen;
					if(edt.length()<=0) 
						randomLen = MyRandom.getRandomNum(0, 20);
					else{
						randomLen = MyRandom.getRandomNum(0, edt.length()-1);
					}
					if(cls== InputType.TYPE_CLASS_NUMBER || cls== InputType.TYPE_CLASS_DATETIME){
						text = MyRandom.getRandomInt(randomLen);
					}else if(cls== InputType.TYPE_CLASS_PHONE){
						text = MyRandom.getRandomInt(Constant.PHONELEN);
					}else if(cls== InputType.TYPE_CLASS_TEXT){
						text = MyRandom.getRandomString(randomLen);
					}else{
						text = MyRandom.getRandomInput(randomLen);
					}
					operation.add(Constant.TYPETEXT+":"+text);
				} else if (Profile.getEditTextType().equals(Constant.GIVEN)) {
					text = Profile.getGivenStr();
					operation.add(Constant.TYPETEXT+":"+text);
				}
				operation.add(Constant.SENDKEY+":"+Solo.ENTER);
				operation.add(Constant.SLEEPSMALLTIME);
				Event e = new Event(stateId, operation, view.getId());
				events.add(e);
				if(Profile.isTextLongClick()==1){
					ArrayList<String> operation1 = new ArrayList<String>();
					if(Profile.getClickType().equals(Constant.POINT))
						operation1.add(Constant.CLICKLONGONSCREEN+":" + loc);
					else
						operation1.add(Constant.CLICKLONGONVIEW+":"+view.getId());
					operation1.add(Constant.SLEEPSMALLTIME);
					Event e1 = new Event(stateId, operation1, view.getId());
					events.add(e1);
				}
			}else if (view instanceof AbsListView) {
				ArrayList<String> operation = new ArrayList<String>();
				//if(view instanceof ListView)
				AbsListView list = (AbsListView) view;
				if(list.getChildCount()<=0) continue;
				if(Profile.getListVisit().equals(Constant.FIRST)){
					operation.add(Constant.CLICKINLIST+":"+0);
				}else if(Profile.getListVisit().equals(Constant.EACH)){
					for(int i=0;i<list.getChildCount();i++){
						operation.add(Constant.CLICKINLIST+":"+i);
					}
				}
				operation.add(Constant.SLEEPSMALLTIME);
				Event e = new Event(stateId, operation, view.getId());
				events.add(e);
			} 
			else if (view instanceof AbsSeekBar) {
				ArrayList<String> operation = new ArrayList<String>();
				ProgressBar bar = (ProgressBar) view;
				operation.add(Constant.SETPROGRESSBAR+":"+0);
				operation.add(Constant.SETPROGRESSBAR+":"+bar.getMax());
				operation.add(Constant.SETPROGRESSBAR+":"+bar.getMax() / 2);
				operation.add(Constant.SLEEPSMALLTIME);
				Event e = new Event(stateId, operation, view.getId());
				events.add(e);
			} 
			else if (view instanceof  Spinner) {
				ArrayList<String> operation = new ArrayList<String>();
				Spinner spinner = (Spinner) view;
				if(Profile.getClickType().equals(Constant.POINT))
					operation.add(Constant.CLICKONSCREEN+":" +loc);
				else
					operation.add(Constant.CLICKONVIEW+":"+view.getId());
				int line = MyRandom.getRandomNum(0,spinner.getCount()-1);
				operation.add(Constant.PRESSSPINNERITEM+":"+line);
				operation.add(Constant.SLEEPSMALLTIME);
				Event e = new Event(stateId, operation, view.getId());
				events.add(e);
			}
			else if (view instanceof Button ){
				ArrayList<String> operation = new ArrayList<String>();
				if(Profile.getClickType().equals(Constant.POINT))
					operation.add(Constant.CLICKONSCREEN+":" +loc);
				else
					operation.add(Constant.CLICKONVIEW+":"+view.getId());
				operation.add(Constant.SLEEPSMALLTIME);
				Event e = new Event(stateId, operation, view.getId());
				events.add(e);
				if(Profile.isButtonLongClick()==1){
					ArrayList<String> operation1 = new ArrayList<String>();
					if(Profile.getClickType().equals(Constant.POINT))
						operation1.add(Constant.CLICKLONGONSCREEN+":" + loc);
					else
						operation1.add(Constant.CLICKLONGONVIEW+":"+view.getId());
					operation1.add(Constant.SLEEPSMALLTIME);
					Event e1 = new Event(stateId, operation1, view.getId());
					events.add(e1);
				}
			}
			else if (view instanceof CompoundButton) {
				ArrayList<String> operation = new ArrayList<String>();
				//if(Profile.getClickType().equals(Constant.POINT))
				operation.add(Constant.CLICKONSCREEN+":" +loc);
				//else
					//operation.add(Constant.CLICKONVIEW+":"+view.getId());
				operation.add(Constant.SLEEPSMALLTIME);
				Event e = new Event(stateId, operation, view.getId());
				events.add(e);
			}
			else if (view instanceof  TextView) {
				ArrayList<String> operation = new ArrayList<String>();
				if(Profile.getClickType().equals(Constant.POINT))
					operation.add(Constant.CLICKONSCREEN+":" +loc);
				else
					operation.add(Constant.CLICKONVIEW+":"+view.getId());
				operation.add(Constant.SLEEPSMALLTIME);
				Event e = new Event(stateId, operation, view.getId());
				events.add(e);
				if(Profile.isTextLongClick()==1){
					ArrayList<String> operation1 = new ArrayList<String>();
					if(Profile.getClickType().equals(Constant.POINT))
						operation1.add(Constant.CLICKLONGONSCREEN+":" + loc);
					else
						operation1.add(Constant.CLICKLONGONVIEW+":"+view.getId());
					operation1.add(Constant.SLEEPSMALLTIME);
					Event e1 = new Event(stateId, operation1, view.getId());
					events.add(e1);
				}
			}
			else if(view.getId()==-1){
				ArrayList<String> operation = new ArrayList<String>();
				if(Profile.getClickType().equals(Constant.POINT))
					operation.add(Constant.CLICKONSCREEN+":" +loc);
				else
					operation.add(Constant.CLICKONVIEW+":"+view.getId());
				operation.add(Constant.SLEEPSMALLTIME);
				Event e = new Event(stateId, operation, view.getId());
				events.add(e);
			}else{
				ArrayList<String> operation = new ArrayList<String>();
				//if(Profile.getClickType().equals(Constant.POINT))
				//operation.add(Constant.CLICKONSCREEN+":" +loc);
				//else
				operation.add(Constant.CLICKONVIEW+":"+view.getId());
				operation.add(Constant.SLEEPSMALLTIME);
				Event e = new Event(stateId, operation, view.getId());
				events.add(e);
			}
			
		}
		if(Profile.getIsScroll()==1){
			for(int p=Constant.SCROLLMIN; p<= Constant.SCROLLMAX; p++){
				ArrayList<String> operation = new ArrayList<String>();
				operation.add(String.valueOf(p)); 
				events.add(new Event(stateId,operation, p));
			}
		}
		ArrayList<String> operation = new ArrayList<String>();
		operation.add(String.valueOf(Constant.SENDKEY+":"+Solo.MENU));  
		events.add(new Event(stateId,operation, Solo.MENU));
		return events;
	}
	
	/**
	 * executeEvent
	 * @param e
	 * @return 
	 */
	private int executeEvent(Event e) {
		int flag=1;
		//MyLog.log("executeEvent");
		ArrayList<String> operation = e.operation;
		//MyLog.log(operation.toString());
		try{
			for(String op : operation){
				if(op.contains("goBack")){
					MyLog.log("goBack");
					solo.goBack();
					flag =  0;
				}
				else if(op.contains(Constant.LEFT+"")){
					solo.scrollToSide(Solo.LEFT, 0.6f);
					MyLog.log("LEFT");
				}else if(op.contains(Constant.RIGHT+"")){
					solo.scrollToSide(Solo.RIGHT, 0.6f);
					MyLog.log("RIGHT");
				}else if(op.contains(Constant.UP+"")){
					solo.scrollToSide(Solo.UP, 0.6f);
					MyLog.log("UP");
				}else if(op.contains(Constant.DOWN+"")){
					solo.scrollToSide(Solo.DOWN, 0.6f);
					MyLog.log("DOWN");
				}
				else if(op.contains(Constant.SLEEPEDITTIME)){
					solo.sleep(Profile.getEnterTime());		
				}
				else if(op.contains(Constant.SLEEPSMALLTIME)){
					solo.sleep(Profile.getSmallSleepTime());
				}
				else if(op.contains(Constant.SENDKEY)){
					solo.sendKey(Integer.parseInt(op.split(":")[1]));
				}
				else if(op.contains(Constant.CLICKINLIST)){
					solo.clickInList(Integer.parseInt(op.split(":")[1]));
				}
				else if(op.contains(Constant.PRESSSPINNERITEM)){
					solo.pressSpinnerItem(0,Integer.parseInt(op.split(":")[1]));	
				}
				else if(op.contains(Constant.CLICKONSCREEN)){
					View view =solo.getView(e.viewid);
					String pos = op.split(":")[1];
					int x = Integer.parseInt(pos.split(",")[0]);
					int y = Integer.parseInt(pos.split(",")[1]);
					solo.clickOnScreen(x, y);
					MyLog.log(2+op.split(":")[0]+"(" + Utils.getTypeOfView(view) + ";"+Utils.getTextOfView(view)+";"+e.viewid);
				}
				else if(op.contains(Constant.CLICKLONGONSCREEN)){
					View view =solo.getView(e.viewid);
					String pos = op.split(":")[1];
					int x = Integer.parseInt(pos.split(",")[0]);
					int y = Integer.parseInt(pos.split(",")[1]);
					solo.clickLongOnScreen(x, y);
					MyLog.log(2+op.split(":")[0]+"(" + Utils.getTypeOfView(view) + ";"+Utils.getTextOfView(view)+";"+e.viewid);
				}
				else if(op.contains(Constant.CLEAREDITTEXT)){
					View view =solo.getView(e.viewid);
					EditText edt = (EditText)view;
					solo.clearEditText(edt);
					MyLog.log(2+op.split(":")[0]+"(" + Utils.getTypeOfView(view) + ";"+Utils.getTextOfView(view)+";"+e.viewid);
				}
				else if(op.contains(Constant.TYPETEXT)){
					View view =solo.getView(e.viewid);
					String text = op.split(":")[1];
					EditText edt = (EditText)view;
					solo.typeText(edt,text);
					MyLog.log(2+op.split(":")[0]+"(" + Utils.getTypeOfView(view) + ";"+Utils.getTextOfView(view)+";"+e.viewid);
				}
				else if(op.contains(Constant.ENTERTEXT)){
					View view =solo.getView(e.viewid);
					String text = op.split(":")[1];
					EditText edt = (EditText)view;
					solo.enterText(edt,text);
					MyLog.log(2+op.split(":")[0]+"(" + Utils.getTypeOfView(view) + ";"+Utils.getTextOfView(view)+";"+e.viewid);
				}
				else if(op.contains(Constant.GETEDITTEXT)){
					View view =solo.getView(e.viewid);
					EditText edt = (EditText)view;
					edt.getEditableText().toString();///??
					MyLog.log(2+op.split(":")[0]+"(" + Utils.getTypeOfView(view) + ";"+Utils.getTextOfView(view)+";"+e.viewid);
				}
				else if(op.contains(Constant.CLICKONVIEW)){
					View view =solo.getView(e.viewid);
					solo.clickOnView(view);
					MyLog.log(2+op.split(":")[0]+"(" + Utils.getTypeOfView(view) + ";"+Utils.getTextOfView(view)+";"+e.viewid);
				}
				else if(op.contains(Constant.SETPROGRESSBAR)){
					View view =solo.getView(e.viewid);
					ProgressBar bar = (ProgressBar)view;
					solo.setProgressBar(bar, Integer.parseInt(op.split(":")[1]));
					MyLog.log(2+op.split(":")[0]+"(" + Utils.getTypeOfView(view) + ";"+Utils.getTextOfView(view)+";"+e.viewid);
				}
			}
		}catch(Exception exc){
			exc.printStackTrace();
		}
		solo.sleep(Profile.getSmallSleepTime());
		return flag;
	}
	
	//--------------------------------------about others---------------------------------//
	
	/**
	 * getCurrentActName
	 * @return
	 */
	private String getCurrentActName() {
		Activity act = solo.getCurrentActivity();
		String cls = act.getIntent().getComponent().getClassName();
		String pkg =act.getPackageName();
		int packageLen = pkg.length();
		if (!cls.startsWith(pkg) || cls.length() <= packageLen
                || cls.charAt(packageLen) != '.') {
            return "";
        }
        return cls.substring(packageLen+1);
		//return  solo.getCurrentActivity().getLocalClassName();
	}
	
	/**
	 * appQuit
	 * @param actBeforeHandle
	 * @return
	 */
	private boolean appQuit(Activity actBeforeHandle) {		
		if (actBeforeHandle.isFinishing()) {
			MyLog.log("finish current");
			if (Utils.isActivityStackEmpty(actBeforeHandle)) {
				return true;// quit if stack empty
			} else {
				String nextact = Utils.getTopActivity(actBeforeHandle);// this act finish but next exist
				if (Utils.isLanucher(nextact)) {
					return true;
				}
			}
		}
		return false;
	}
	
	private boolean isActClose(Activity actBeforeHandle) {		
		return actBeforeHandle.isFinishing();
	}
	private boolean isActStart(String logs) {		
		return logs.contains(Constant.STARTACTIVITY) || logs.contains(Constant.STARTACTIVITY2);
	}
	private boolean isActFinish(String logs) {		
		return logs.contains(Constant.ACTIVITYFINISH);
	}
	private boolean isOnBackPressed(String logs) {
		return logs.contains(Constant.ONBACKPRESSED);
	}
	
	/**
	 * goBack
	 */
	private void goBack() {
		MyLog.log("press back button");
		if(!solo.getCurrentActivity().isTaskRoot())
			solo.goBack(); 
	}
	
	/**
	 * isTargetTran
	 * @param logs
	 * @return
	 */
	private Boolean isTargetTran(String logs) {
		String log[] = logs.split("\n");
		for(String s:log){
			if(s.contains(Constant.STARTACTIVITY)||s.contains(Constant.STARTACTIVITY2)||s.contains(Constant.ACTIVITYFINISH)
					||s.contains(Constant.SETFLAG)||s.contains(Constant.ONBACKPRESSED))
				continue;
			if(s.contains(Constant.TARGET_TAG)) return true;
		}
		return false;
	}
	
	/**
	 * getLanuchMode by manifest and intent flag
	 * @param startActivityFlag
	 * @param string
	 * @return
	 */
	private int getLanuchMode(int startActivityFlag, String newAct) {
		
		//by intent flag
		if(startActivityFlag!=0){
			return startActivityFlag;
		}
		//by manifest 
		else{
			String flag="";
			for(String act :manifestStartFlag.keySet()){
				act = act.trim();
				newAct = newAct.trim();
				if(act.contains(newAct)){
					flag= manifestStartFlag.get(act);
				}
			}
			if(flag.contains("singleTop"))
				return Constant.SINGLETOP;
			if(flag.contains("singleTask"))
				return Constant.SINGLETASK;
			if(flag.contains("singleInstance"))
				return Constant.SINGLEINSTANCE;
			
			return Constant.STANDARD;
		}
	}
	

	/**
	 * getLanuchStackOperation 
	 * @param mode start
	 * @return
	 */
	private List<StackOperation> getLanuchStackOperation(int mode, String act) {
		List<StackOperation> ops = new ArrayList<StackOperation>();
		if(mode==Constant.SINGLETOP || mode==Constant.FLAG_ACTIVITY_SINGLE_TOP){
			if(!model.stack.isEmpty() && !model.stack.peek().equals(act)){
				StackOperation op = new StackOperation("push",act);
				ops.add(op);
			}
		}
		else if(mode==Constant.SINGLETASK || mode==Constant.FLAG_ACTIVITY_NEW_TASK
				||mode==Constant.SINGLEINSTANCE || mode==Constant.FLAG_ACTIVITY_CLEAR_TOP){
			@SuppressWarnings("unchecked")
			Stack<String> st_temp = (Stack<String>) model.stack.clone();
			if(st_temp.contains(act)){
				while(!st_temp.pop().equals(act)){
					ops.add(new StackOperation("pop stack"));
				}
			}else{
				ops.add(new StackOperation("push",act));
			}
		}else{
			ops.add(new StackOperation("push",act));
		}
		return ops;
	}

	/**
	 * changeStack
	 * @param stackOp1
	 * @return
	 */
	private void changeStack(List<StackOperation> stackOp1, Stack<String>stack) {
		for(StackOperation so: stackOp1){
			if(so.operation.equals("pop stack")){
				if(!stack.isEmpty()){
					stack.pop();
					MyLog.log("stack pop"+stack);
				}else{
					MyLog.log("should pop"+stack);
				}
			}else if(so.operation.equals("push")){
				stack.push(so.act_name);
				MyLog.log("stack push "+so.act_name+" "+stack);
			}
		}
	}
	/**
	 * check Similarity 
	 * @param s1
	 * @return
	 */
	private double checkSimilarity(State oldstate,State newstate) {
		if(oldstate==null && newstate==null) return 1;
		if(oldstate==null || newstate==null) return 0;
		//MyLog.log("not null");
		ArrayList<MyView> oldMyViews = (ArrayList<MyView>) oldstate.mviews; 
		ArrayList<MyView> newMyViews = (ArrayList<MyView>) newstate.mviews; 
		int arr1[]= new int[oldMyViews.size()], arr2[]= new int[newMyViews.size()];
		
		int viewSum = oldMyViews.size()+newMyViews.size();
		double score=0.0;
		double c1=0, c2=0, c0=0;
		for(int i=0; i<oldMyViews.size(); i++){
			if(arr1[i]==1) continue;
			MyView v1= oldMyViews.get(i);
			for(int j=0; j<newMyViews.size(); j++){
				if(arr2[j]==1) continue;
				MyView v2= newMyViews.get(j);
				if(v1.id == v2.id){
					c1++;
					if(v1.viewState == v2.viewState){
						c2++;
					}
					arr1[i]=1;
					arr2[j]=1;
					break;
				}
			}
		}
		
		c0 = oldMyViews.size()+ newMyViews.size() -c1;
		//MyLog.log(c0+" "+ c1+" "+c2);
		double k,sim;
		//MyLog.log("checkSimilarity "+ sim);
		if(testMode == 2 ||testMode == 4)
			k=0.7;
		else
			k=0;
		sim = viewSum==0? 0:(c1-k*(c1-c2))/c0;
		return sim;
	}
	
}
