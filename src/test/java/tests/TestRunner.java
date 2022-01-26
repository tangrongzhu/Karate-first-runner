package tests;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

// import com.intuit.karate.junit5.Karate;

// public class TestRunner {
//   @Karate.Test
//     Karate testRunner() {
//         return Karate.run("FirstTest").relativeTo(getClass());
//     }

// }

class TestRunner {
  @Test
  void testParallel() {
    Results results = Runner.path("classpath:tests")
        .tags("~@ignore")
        // .outputCucumberJson(true)
        .parallel(1);
    assertEquals(0, results.getFailCount(), results.getErrorMessages());
  }

}
