package core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;

import model.Event;
import model.GUIModel;
import model.State;
import model.Transition;
import utils.Constant;
import utils.IO;
import utils.Serialize;

public class EventSequenceGenerator {
	public Serialize tempSer;
	public GUIModel model;// the generated GUI model
	public List<State> states;  //state list 
	public List<Transition> trans;//transition list
	public Stack<Integer> stack;
	public Map<Integer,List<Transition>> graph= new HashMap<Integer, List<Transition>>();
	List<Integer> visitedStates;
	String path;
	static String packageName;
	static String main; 
	List<List<Event>> cases;
	String textValus[]= {"","0","-1","-2147483649","-9223372036854775809","2147483648",
		"9223372036854775808","999999999999999999999999999999999999999999","aa!@#$^*&<>.;[]//@@'?/{}:)_",
		"12345qwert12345qwert12345qwert12345qwert12345qwert12345qwert12345qwert12345qw" +
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"+
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"+
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"+
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"+
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"+
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"+
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"+
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"+
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"+
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"+
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"+
		"ert12345qwert12345qwert12345qwert12345qwert345qwert12345qwert12345qwert12345qwert"};
	
	public static void main(String[] args) {	
		packageName = args[0];//args[0]
		main = args[1];//args[1]
		EventSequenceGenerator generator = new EventSequenceGenerator();
		if(!generator.initial()) return;
		
		generator.generate_DFS();
		//generator.generate_BFS();
		generator.generate_Target(); 
		generator.generate_EditText(); 
		generator.generateModel();
	}
	private void clear_trans(){
		for(Transition s :trans){
			s.isVisited=false;
		}
	}
	
	private void generate_Target() {
		clear_trans();
		visitedStates = new ArrayList<Integer>();
		cases = new ArrayList<List<Event>>();
		stack = new Stack<Integer>();
		stack.add(1);
		while(true){
			State s = model.getStateById(stack.peek());
			List<Transition> list = graph.get(stack.peek());
			if(list==null){
				addVisited(stack.peek());
				for(State st : states){
					if(!visitedStates.contains(st.id)){
						turnToCurrentState(st);
						break;
					}
				}
			}
			else{
				boolean find_trans=false;
				for(int i=0;i<list.size();i++){
					Transition t =list.get(i);
					if(t.isVisited==false){
						//visit a transition of current state
						t.isVisited=true;
						if(i==list.size()-1){
							addVisited(stack.peek());
						}
						find_trans = true;
						String ops = t.event.operation.toString();
						if(t.isTarget==true){
							List<Event> mcase = new ArrayList<Event>();
							mcase.addAll(s.path);
							mcase.add(t.event);
							cases.add(new ArrayList<Event>(mcase));
							mcase.clear();
						}
						if(t.destination ==null){//don't execute out/quit transition
							turnToCurrentState(t.source);
							continue;
						}
						//add event into seq
						if(!t.isStay){
							stack.add(t.destination.id);
							s = model.getStateById(stack.peek());
							break;
						}
					}
				}
				if(find_trans==false){
					//go back 
					for(State st : states){
						if(!visitedStates.contains(st.id)){
							turnToCurrentState(st);
							break;
						}
					}
				}
			}
//			System.out.println("stack  "+stack.toString());
			if(visitedStates.size()==states.size()) {
				break;
			}
		}
		generateTestCase(Constant.SEQ_TAR,cases);

	}

	private void generate_EditText( ) {
		clear_trans();
		visitedStates = new ArrayList<Integer>();
		cases = new ArrayList<List<Event>>();
		stack = new Stack<Integer>();
		stack.add(1);
		while(true){
			State s = model.getStateById(stack.peek());
			List<Transition> list = graph.get(stack.peek());
			if(list==null){
				addVisited(stack.peek());
				for(State st : states){
					if(!visitedStates.contains(st.id)){
						turnToCurrentState(st);
						break;
					}
				}
			}
			else{
				boolean find_trans=false;
				for(int i=0;i<list.size();i++){
					Transition t =list.get(i);
					if(t.isVisited==false){
						//visit a transition of current state
						t.isVisited=true;
						if(i==list.size()-1){
							addVisited(stack.peek());
						}
						find_trans = true;
						ArrayList<String> ops = t.event.operation;
						int index =-1;
						for(int k=0; k<t.event.operation.size();k++){
							if(ops.get(k).contains(Constant.TYPETEXT)){
								index = k;
								break;
							}
						}
						if(index>0){
							for(String value: textValus){
								List<Event> mcase = new ArrayList<Event>();
								mcase.addAll(s.path);
								@SuppressWarnings("unchecked")
								ArrayList<String> eventops = (ArrayList<String>) t.event.operation.clone();
								eventops.set(index, Constant.TYPETEXT+":"+value);
								mcase.add(new Event(t.event.stateId, eventops, t.event.viewid));
								cases.add(new ArrayList<Event>(mcase));
								mcase.clear();
							}
						}
						if(t.destination ==null){//don't execute out/quit transition
							turnToCurrentState(t.source);
							continue;
						}
						//add event into seq
						if(!t.isStay){
							stack.add(t.destination.id);
							s = model.getStateById(stack.peek());
							break;
						}
					}
				}
				if(find_trans==false){
					//go back 
					for(State st : states){
						if(!visitedStates.contains(st.id)){
							turnToCurrentState(st);
							break;
						}
					}
				}
			}
			if(visitedStates.size()==states.size()) {
				break;
			}
		}

		generateTestCase(Constant.SEQ_EDITTEXT,cases);
	}
	
	private void generate_BFS() {
		// TODO Auto-generated method stub
		clear_trans();
		cases = new ArrayList<List<Event>>();
		generateTestCase(Constant.SEQ_BFS,cases);
	}

	private void generate_DFS() {
		clear_trans();
		visitedStates = new ArrayList<Integer>();
		cases = new ArrayList<List<Event>>();
		List<Event> mcase = new ArrayList<Event>();
		stack = new Stack<Integer>();
		stack.add(1);
		String currentAct="";
		while(true){
			if(stack.isEmpty()){
				cases.add(new ArrayList<Event>(mcase));
				for(State st : states){
					if(!visitedStates.contains(st.id)){
						turnToCurrentState(mcase, st);
						break;
					}
				}
				if(stack.isEmpty()){
					break;
				}
			}
			State s = model.getStateById(stack.peek());
			currentAct = s.activity_name;
			List<Transition> list = graph.get(stack.peek());
			if(list==null){
				cases.add(new ArrayList<Event>(mcase));
				addVisited(stack.peek());
				for(State st : states){
					if(!visitedStates.contains(st.id)){
						turnToCurrentState(mcase, st);
						break;
					}
				}
			}
			else{
				boolean find_trans=false;
				for(int i=0;i<list.size();i++){
					Transition t =list.get(i);
					if(t.isVisited==false){
						//visit a transition of current state
						t.isVisited=true;
						if(i==list.size()-1){
							addVisited(stack.peek());
						}
						find_trans = true;
						if(t.destination ==null){//don't execute out/quit transition
							mcase.add(t.event);
							cases.add(new ArrayList<Event>(mcase));
							turnToCurrentState(mcase, t.source);
							continue;
						}
						//add event into seq
						mcase.add(t.event);
						if(!t.isStay){
							stack.add(t.destination.id);
							s = model.getStateById(stack.peek());
							currentAct = s.activity_name;
							break;
						}
					}
				}
				if(find_trans==false){
					//go back 
					cases.add(new ArrayList<Event>(mcase));
					for(State st : states){
						if(!visitedStates.contains(st.id)){
							turnToCurrentState(mcase, st);
							break;
						}
					}
	//				StackOperation backOp = (StackOperation) s.backStackOprations; 
	//				System.out.println(stack.toString());
	//				if(backOp.operation.equals("pop state")){
	//					//mcase.add("goback");11111111111
	//					System.out.println("goback1");
	//					if(stack.size()>0)
	//						stack.pop();
	//				}else if(backOp.operation.equals("pop stack")){
	//					//mcase.add("goback");!!1111
	//					System.out.println("goback2");
	//					while(stack.size()>0){
	//						stack.pop();
	//						if(!model.getStateById(stack.peek()).activity_name.equals(currentAct)){
	//							break;
	//						}
	//					}
	//				}else{
	//					stack.clear();
	//					stack.add(1);
	//					cases.add(new ArrayList<Event>(mcase));
	//					mcase.clear();
	//				}
					//System.sb.println(backOp.operation);
				}
			}
//			System.out.println("stack  "+stack.toString());
			if(visitedStates.size()==states.size()) {
				cases.add(new ArrayList<Event>(mcase));
				break;
			}
		}
		generateTestCase(Constant.SEQ_DFS,cases);
	}
	
	/**
	 * addVisited
	 * @param id
	 */
	private void addVisited(Integer id) {
		if(!visitedStates.contains(id)){
			visitedStates.add(id);;
//			System.out.println("add state"+id);
		}
	}


	/**
	 * turnToCurrentState
	 * @param mcase
	 * @param source
	 */
	private void turnToCurrentState(List<Event> mcase, State ss) {
		mcase.clear();
		stack.clear();
		List<Event> paths = ss.path; 
		for(Event e: paths){
			mcase.add(e);
			stack.add(e.stateId);
		}
		stack.add(ss.id);
//		System.out.println("stack-- "+stack.toString());
	}

	/**
	 * turnToCurrentState
	 * @param source
	 */
	private void turnToCurrentState(State ss) {
		stack.clear();
		List<Event> paths = ss.path; 
		for(Event e: paths){
			stack.add(e.stateId);
		}
		stack.add(ss.id);
//		System.out.println("stack-- "+stack.toString());
	}

	
	/**
	 * initial
	 */
	private boolean initial() {
		tempSer = IO.getTempSer(tempSer);
		if (tempSer == null){ // first run
			System.out.println("read model fails");
			return false;
		}
		readFromSer();
		getTranOfState();
		generateATG();
		return true;
	}
	/**
	 * readFromSer
	 */
	private void readFromSer() {
		System.out.println("file not empty...");
		this.model = tempSer.model;
		this.states = model.states;
		this.trans = model.trans;
	}
	/**
	 * getTranOfState
	 */
	private void getTranOfState(){
		for(Transition t : trans){
			if(graph.get(t.source.id) == null){
				ArrayList<Transition> list1 = new ArrayList<Transition>(); 
				list1.add(t);
				
				graph.put(t.source.id, list1);
			}else{
				ArrayList<Transition> list2 = (ArrayList<Transition>) graph.get(t.source.id);
				list2.add(t);
				graph.put(t.source.id, list2);
			}
		}
	}
	/**
	 * generateATG
	 */
	private void generateATG(){
		StringBuilder atg= new StringBuilder();
		atg.append("digraph G {\nedge [fontname=\"Microsoft JhengHei \" fontsize =12];\n");
		String source, destination;
		for(Transition t : model.trans){
			String sou[] = t.source.activity_name.split("\\.");
			source = sou[sou.length-1]+"_"+t.source.id;
			
			if(t.destination!=null){
				String des[] = t.destination.activity_name.split("\\.");
				destination  = des[des.length-1]+"_"+t.destination.id;
			}
			else 
				destination = "Quit_Out";
			atg.append( source + " -> " + destination + " [label=\""+t.event.viewid+"\"]");
			if (t.isTarget){
                atg.append("[color=red]");
			}
			atg.append("\n");
		}
		atg.append("}\n");
		IO.writeFile(Constant.FILEPATH+Constant.ATG, atg.toString());
	}
	/**
	 * generateATG
	 */
	private void generateModel(){
		String s1= "node: "+model.states.size()+"\n";
		String s2= "trans: "+model.trans.size()+"\n";
		IO.writeFile(Constant.FILEPATH+Constant.MODEl, s1+s2);
	}
	/**
	 * generateTestCase
	 */
	private void generateTestCase(String name, List<List<Event>> cases){
		//System.sb.println("generateTestCase "+cases.toString());
		StringBuilder sb= new StringBuilder();
		StringBuilder sb_name= new StringBuilder();
		int i =1;
		preTestCase(name,sb);
		for(List<Event>mcase: cases){
			sb.append("\t@Test\n");
			if(i>9){
				sb.append("\tpublic void test" +i + "() {\n");
				sb_name.append("test" +i + "\n");
			}else{
				sb.append("\tpublic void test0" +i + "() {\n");
				sb_name.append("test0" +i + "\n");
			}
			sb.append("\t\tLog.i(\"K_InsDal\",\"new test"+i+"\");\n");
			for(Event e: mcase){
				/** print event */
				generateCase(sb,e);
			}
			sb.append("\t}\n");
			i++;
		}
		aftTestCase(sb);
		IO.writeFile(Constant.JAVAPATH + name+".java", sb.toString());
		IO.writeFile(Constant.JAVAPATH + name+".txt", sb_name.toString());
	}
	
	/**
	 * generateTestCase
	 * @param filename
	 * @param sb
	 * @param e 
	 */
	private void generateCase(StringBuilder sb, Event e) { 
		ArrayList<String> operation = e.operation;
		for(String op : operation){
//			System.out.println(op);
			String text = "";
			if(op.split(":").length>1)
				text = op.split(":")[1];
			if(op.equals("goBack")){
				sb.append("\t\tsolo.goBack();\n");
			}else if(op.equals(String.valueOf(Constant.LEFT))){
				sb.append("\t\tsolo.scrollToSide(Solo.LEFT, 0.6f);\n");
			}else if(op.equals(String.valueOf(Constant.RIGHT))){
				sb.append("\t\tsolo.scrollToSide(Solo.RIGHT, 0.6f);\n");
			}else if(op.equals(String.valueOf(Constant.UP))){
				sb.append("\t\tsolo.scrollToSide(Solo.UP, 0.6f);\n");
			}else if(op.equals(String.valueOf(Constant.DOWN))){
				sb.append("\t\tsolo.scrollToSide(Solo.DOWN, 0.6f);\n");
			}
			else if(op.contains(Constant.CLEAREDITTEXT)){
				sb.append("\t\tview =solo.getView("+e.viewid+");\n");
				sb.append("\t\t//viewid="+e.viewid+", text="+text+"\n");
				sb.append("\t\tedt = (EditText)view;\n");
				sb.append("\t\tsolo.clearEditText(edt);\n");
			}
			else if(op.contains(Constant.TYPETEXT)){
				sb.append("\t\tview =solo.getView("+e.viewid+");\n");
				sb.append("\t\t//viewid="+e.viewid+", text="+text+"\n");
				sb.append("\t\tedt = (EditText)view;\n");
				sb.append("\t\tsolo.typeText(edt,\""+text+"\");\n");
			}
			else if(op.contains(Constant.ENTERTEXT)){
				sb.append("\t\tview =solo.getView("+e.viewid+");\n");
				sb.append("\t\t//viewid="+e.viewid+", text="+text+"\n");
				sb.append("\t\tedt = (EditText)view;\n");
				sb.append("\t\tsolo.enterText(edt,\""+text+"\");\n");
			}
			else if(op.contains(Constant.GETEDITTEXT)){
				sb.append("\t\tview =solo.getView("+e.viewid+");\n");
				sb.append("\t\t//viewid="+e.viewid+", text="+text+"\n");
				sb.append("\t\tedt = (EditText)view;\n");
				sb.append("\t\tedt.getEditableText().toString();\n");
			}
			else if(op.contains(Constant.CLICKONVIEW)){
				sb.append("\t\tview =solo.getView("+e.viewid+");\n");
				sb.append("\t\t//viewid="+e.viewid+", text="+text+"\n");
				sb.append("\t\tsolo.clickOnView(view);\n");
			}
			else if(op.contains(Constant.CLICKONSCREEN)){
				sb.append("\t\tview =solo.getView("+e.viewid+");\n");
				//int x = Integer.parseInt(text.split(",")[0]);
				//int y = Integer.parseInt(text.split(",")[1]);
				//sb.append("\t\t//viewid="+e.viewid+", text="+text+"\n");
				//sb.append("\t\tsolo.clickOnScreen("+x+","+y+");\n");
				sb.append("\t\t//viewid="+e.viewid+", text="+text+"\n");
				sb.append("\t\tsolo.clickOnView(view);\n");
			}
			else if(op.contains(Constant.CLICKLONGONSCREEN)){
				sb.append("\t\tview =solo.getView("+e.viewid+");\n");
				int x = Integer.parseInt(text.split(",")[0]);
				int y = Integer.parseInt(text.split(",")[1]);
				sb.append("\t\t//viewid="+e.viewid+", text="+text+"\n");
				sb.append("\t\tsolo.clickLongOnScreen("+x+","+y+");\n");
			}
			else if(op.contains(Constant.SENDKEY)){
				sb.append("\t\tsolo.sendKey("+text+");\n");
			}
			else if(op.contains(Constant.SLEEPEDITTIME)){
				sb.append("\t\tsolo.sleep(1000);\n");		
			}
			else if(op.contains(Constant.SLEEPSMALLTIME)){
				sb.append("\t\tsolo.sleep(100);\n");	
			}
			else if(op.contains(Constant.CLICKINLIST)){
				sb.append("\t\tview =solo.getView("+e.viewid+");\n");
				int line = Integer.parseInt(text);
				sb.append("\t\t//viewid="+e.viewid+", text="+text+"\n");
				sb.append("\t\tsolo.clickInList("+line+");\n");
			}
			else if(op.contains(Constant.SETPROGRESSBAR)){
				sb.append("\t\tview =solo.getView("+e.viewid+");\n");
				sb.append("\t\tbar = (ProgressBar)view;;\n");	
				int num = Integer.parseInt(text);
				sb.append("\t\t//viewid="+e.viewid+", text="+text+"\n");
				sb.append("\t\tsolo.setProgressBar(bar,"+num+" );\n");	
			}
			else if(op.contains(Constant.PRESSSPINNERITEM)){
				sb.append("\t\tview =solo.getView("+e.viewid+");\n");
				int num = Integer.parseInt(text);
				sb.append("\t\t//viewid="+e.viewid+", text="+text+"\n");
				sb.append("\t\tsolo.pressSpinnerItem(0,"+num+" );\n");	
			}
		}
	}
	

	/**
	 * pre-testcase
	 */
	private  void preTestCase(String classname, StringBuilder sb) {
		sb.append("package "+ packageName + ".test;\n\n");
		sb.append("import com.robotium.solo.Solo;\n");
		sb.append("import android.test.ActivityInstrumentationTestCase2;\n");
		sb.append("import org.junit.After;\n");
		sb.append("import org.junit.Before;\n");
		sb.append("import org.junit.Test;\n");
		sb.append("import android.app.Activity;\n");
		sb.append("import android.view.View;\n");
		sb.append("import android.widget.EditText;\n");
		sb.append("import android.widget.ProgressBar;\n");
		sb.append("import org.junit.Assert;\n");
		sb.append("import java.util.ArrayList;\n");
		sb.append("import java.io.File;\n");
		sb.append("import java.io.FileWriter;\n");
		sb.append("import java.io.IOException;\n");
		sb.append("import android.widget.AbsListView;\n");
		sb.append("import android.util.Log;\n");

		sb.append("import java.util.ArrayList;\n");
		sb.append("public class " + classname
				+ " extends ActivityInstrumentationTestCase2{\n\n");

		sb.append("\tprivate Solo solo;\n");
		sb.append("\tprivate View view;\n");
		sb.append("\tprivate EditText edt;\n");
		sb.append("\tprivate ProgressBar bar;\n\n");
		
		sb.append("\tprivate static final String LAUNCHER_ACTIVITY_FULL_CLASSNAME=\""+main+"\";\n");
		sb.append("\tprivate static Class<?> launcherActivityClass;\n");
		sb.append("\tstatic{\n");
		sb.append("\t\ttry{\n");
		sb.append("\t\t\tlauncherActivityClass = Class.forName(LAUNCHER_ACTIVITY_FULL_CLASSNAME);\n");
		sb.append("\t\t}catch(ClassNotFoundException e){\n");
		sb.append("\t\t\tthrow new RuntimeException(e);\n");
		sb.append("\t\t}\n");
		sb.append("\t}\n\n");
		
		sb.append("\tpublic " + classname + "() {\n");
		sb.append("\t\tsuper(launcherActivityClass);\n");
		sb.append("\t}\n\n");

		sb.append("\t@Before\n");
		sb.append("\tpublic void setUp() throws Exception {\n");
		sb.append("\t\tsolo = new Solo(getInstrumentation(), getActivity());\n");
		sb.append("\t\tsolo.sleep(2000);\n");		
		sb.append("\t}\n\n");

		sb.append("\t@After");
		sb.append("\tpublic void tearDown() throws Exception {\n");
		sb.append("\t\tsolo.finishOpenedActivities();\n");
		sb.append("\t}\n\n");
	}
	/**
	 * after-testcase
	 */
	private void aftTestCase( StringBuilder sb) {
	
		//last line
		sb.append("}\n");
	}

}
