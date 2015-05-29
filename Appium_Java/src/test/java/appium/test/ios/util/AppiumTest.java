package appium.test.ios.util;


import io.appium.java_client.AppiumDriver;
import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.remote.DesiredCapabilities;
import java.net.URL;
import java.nio.file.Paths;
import java.util.concurrent.TimeUnit;

public class AppiumTest {

    private AppiumDriver driver;

    /**
     * Run before each test *
     */
    @Before
    public void setUp() throws Exception {
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setCapability("appium-version", "1.3.7");
        capabilities.setCapability("platformVersion", "8.3");
        capabilities.setCapability("platformName", "ios");
        capabilities.setCapability("deviceName", "iPad Air");
        //capabilities.setCapability("udid", "e8af21a647d82d9895b06b59904cba190bec179a");


        String userDir = System.getProperty("user.dir");
        //String localApp = "CalculatorDevice.app.zip";
        String localApp = "Calculator.app.zip";

        String appPath = Paths.get(userDir, localApp).toAbsolutePath().toString();
        capabilities.setCapability("app", appPath);
        driver = new AppiumDriver(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);
        driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
        Helpers.init(driver);
    }

    /**
     * Run after each test *
     */
    @After
    public void tearDown() throws Exception {
        if (driver != null) driver.quit();
    }


}