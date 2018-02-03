package DriverInstance;
import java.util.*;
import java.io.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;


/**
 * Created by User on 30.01.2018.
 */
public class DriverInstance {
    public WebDriver generateDriverInstance() {
        WebDriver driver;

        ResourceBundle config = ResourceBundle.getBundle("configuration");
        if (config.getString("browser").equalsIgnoreCase("chrome")) {
            driver = new ChromeDriver();
        } else if (config.getString("browser").equalsIgnoreCase("firefox")) {
            driver = new FirefoxDriver();
        } else {
                driver = new ChromeDriver();
        }
        driver.get(config.getString("appURL"));
        return driver;
    }

    public void closeDriverInstance(WebDriver driver){
        driver.quit();
    }
}