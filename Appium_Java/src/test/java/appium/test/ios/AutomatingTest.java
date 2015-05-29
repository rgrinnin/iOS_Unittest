package appium.test.ios;
import static org.junit.Assert.*;
import appium.test.ios.util.AppiumTest;
import appium.test.ios.util.Helpers;

public class AutomatingTest extends AppiumTest {

    @org.junit.Test
    public void addition() throws Exception {
        Helpers.driver.findElementByAccessibilityId("4").click();
        Helpers.takeScreenshot("Addition1");
        Helpers.driver.findElementByAccessibilityId("+").click();
        Helpers.takeScreenshot("Addition2");
        Helpers.driver.findElementByAccessibilityId("4").click();
        Helpers.takeScreenshot("Addition3");
        Helpers.driver.findElementByAccessibilityId("=").click();
        Helpers.takeScreenshot("Addition4");
        assertEquals(Helpers.driver.findElementByAccessibilityId("ResultLabel").getText(), "8");
    }

    @org.junit.Test
    public void subtraction() throws Exception {
        Helpers.driver.findElementByAccessibilityId("4").click();
        Helpers.driver.findElementByAccessibilityId("-").click();
        Helpers.driver.findElementByAccessibilityId("4").click();
        Helpers.driver.findElementByAccessibilityId("=").click();
        assertEquals(Helpers.driver.findElementByAccessibilityId("ResultLabel").getText(),"0");
    }

    @org.junit.Test
    public void multiply() throws Exception {
        Helpers.driver.findElementByAccessibilityId("4").click();
        Helpers.driver.findElementByAccessibilityId("*").click();
        Helpers.driver.findElementByAccessibilityId("4").click();
        Helpers.driver.findElementByAccessibilityId("=").click();
        assertEquals(Helpers.driver.findElementByAccessibilityId("ResultLabel").getText(),"16");
    }

    @org.junit.Test
    public void divide() throws Exception {
        Helpers.driver.findElementByAccessibilityId("4").click();
        Helpers.driver.findElementByAccessibilityId("/").click();
        Helpers.driver.findElementByAccessibilityId("4").click();
        Helpers.driver.findElementByAccessibilityId("=").click();
        assertEquals(Helpers.driver.findElementByAccessibilityId("ResultLabel").getText(),"1");
    }

}