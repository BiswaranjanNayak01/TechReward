package com.framework.base;

import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.PageLoadStrategy;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import com.framework.utilities.ReadProp;

import io.cucumber.java.After;
import io.cucumber.java.Before;

import java.io.IOException;

import static com.framework.commons.WebCommons.takeWindowScreenshot;

public class BasePage {

    private static WebDriver driver = null;
    ChromeOptions options;
    //method to launch browser

    @Before
    public void launchBrowser() {
        String browser = ReadProp.readData("Config.properties").getProperty("browser");
        if (browser.equalsIgnoreCase("Chrome")) {
            options = new ChromeOptions();
            options.setPageLoadStrategy(PageLoadStrategy.NORMAL);
            driver = new ChromeDriver(options);
        } else if (browser.equalsIgnoreCase("Firefox"))
            driver = new FirefoxDriver();
        else if (browser.equalsIgnoreCase("edge"))
            driver = new EdgeDriver();
        driver.manage().deleteAllCookies();
        driver.manage().window().maximize();
    }


    //method to close browser
    @After
    public void tearDownBrowser(Scenario scenario) throws IOException {
        String name = scenario.getName().toString().replace(":", "");
        if (scenario.isFailed()) {
            TakesScreenshot ts = (TakesScreenshot) driver;
            byte[] src = ts.getScreenshotAs(OutputType.BYTES);
            scenario.attach(src, "image/png", name);
        }
        driver.quit();
    }

    //method to share browser details to other classes
    public WebDriver getDriver() {
        return driver;
    }


}
