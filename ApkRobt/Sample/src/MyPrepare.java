package packageName

import java.io.IOException;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import android.test.ActivityInstrumentationTestCase2;
import model.*;
import utils.*;
import core.GUIModelGenerator;
public class MyPrepare extends ActivityInstrumentationTestCase2 {

	private GUIModelGenerator test;
	private static final String LAUNCHER_ACTIVITY_FULL_CLASSNAME = mainClassName
	
	private static Class<?> launcherActivityClass;
	static {
		try {
			launcherActivityClass = Class
					.forName(LAUNCHER_ACTIVITY_FULL_CLASSNAME);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	public MyPrepare() {
		super(launcherActivityClass);
	}

	@Override
	@Before
	public void setUp() throws Exception {
		test = new GUIModelGenerator();
	}


	@Override
	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testPrepare() throws IOException, ClassNotFoundException {
		test.prepare();
	}


}
