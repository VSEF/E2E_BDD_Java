package running;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features= "features", glue = "steps", format = {"json:target/cucumber.json"})
public class RunCukesTests {
}
