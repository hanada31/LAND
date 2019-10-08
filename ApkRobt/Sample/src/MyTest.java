package packageName

import java.io.IOException;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import android.app.Activity;
import android.app.Instrumentation;
import android.test.ActivityInstrumentationTestCase2;
import model.*;
import utils.*;
import core.GUIModelGenerator;
import com.robotium.solo.Solo.Config;
import com.robotium.solo.Solo.Config.ScreenshotFileType;
import com.robotium.solo.Solo;
public class MyTest extends ActivityInstrumentationTestCase2 {

	private Solo solo;
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
	public MyTest() {
		super(launcherActivityClass);
	}

	@Override
	@Before
	public void setUp() throws Exception {
		MyLog.log("prepareStart");
		MyLog.isCrash("crash");
		Instrumentation instrument = getInstrumentation();
		for(int i=0;i<sleeptime;i++){
		}
		Activity act = getActivity();
		Config config = new Config();
		config.screenshotFileType = ScreenshotFileType.PNG; // 截图类型
		config.screenshotSavePath = "/sdcard/" ; // 截图路径
		config.shouldScroll = false; //是否滚屏
		solo = new Solo(instrument,config, act);
		MyLog.isCrash("not crash");
		test = new GUIModelGenerator(solo);
	}

	@Override
	@After
	public void tearDown() throws Exception {
		test.saveInfo();
		solo.finishOpenedActivities();
		
		
	}

	@Test
	public void testBFS() throws IOException, ClassNotFoundException {
		test.generatGUIModel();
		MyLog.log("testBFS end");
	}

}
