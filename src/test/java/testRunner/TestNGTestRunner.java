package testRunner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

/**
 * This is a Cucumber TestNG Runner class.  The Maven Surefire or Failsafe plugin runs
 * this class as a TestNG test, and this test will then run your Cucumber Scenarios.
 * 
 * In order for the Maven Surefile build plugin to recognize this class as a test, its
 * file name must match one of the automatically included wildcard patterns. For this
 * example, the test class file name matches the "**\/*Tests.java" pattern.
 * See: https://maven.apache.org/surefire/maven-surefire-plugin/examples/inclusion-exclusion.html
 * 
 * In order for the Maven Failsafe plugin to recognize this class as a test, the class 
 * file name must instead match one of its automatically includes wildcard patterns. To
 * run this test with Failsafe, change the class and file name to match the "**\/IT.java"
 * pattern.
 * See: https://maven.apache.org/surefire/maven-failsafe-plugin/examples/inclusion-exclusion.html#inclusions
 *
 *
 */
@CucumberOptions(features = "Features/TechRewardUserManagementModulePositiveTestCase.feature",
        glue = {"com.techReward.stepDefination", "com.framework.base"},
        plugin = {"pretty",
                "html:Reports/AutomationReport.html",
                "html:target/cucumber-reports/cucumber-pretty.html",
                "json:target/cucumber-reports/JsonReport/CucumberTestReport.json",
                "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"
        },
//        , tags = "@Functional",
        tags="@Positive1"
)
public class TestNGTestRunner extends AbstractTestNGCucumberTests {

}
