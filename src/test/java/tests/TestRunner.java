package tests;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
// import com.intuit.karate.junit4.Karate;

import static org.junit.jupiter.api.Assertions.*;

// import org.junit.BeforeClass;
import org.junit.jupiter.api.Test;
// import org.junit.runner.RunWith;

// option 1
// import com.intuit.karate.junit5.Karate;
// public class TestRunner {
//   @Karate.Test
//     Karate testRunner() {
//         return Karate.run("FirstTest").relativeTo(getClass());
//     }

// }

// option 2
// using default env dev
class TestRunner {
  @Test
  void testParallel() {
    System.setProperty("karate.env", "dev"); // optional, can set env to "e2e" also.
    Results results = Runner.path("classpath:tests")
        .tags("~@ignore")
        // .outputCucumberJson(true)
        .parallel(1);
    assertEquals(0, results.getFailCount(), results.getErrorMessages());
  }

}

// option 3 - doesn't work
// have to figure out how to set system property to different env.
// @RunWith(Karate.class)
// public class TestRunner {
//   @BeforeClass
//   public static void before() {
//     System.setProperty("karate.env", "e2e"); // doesn't work
//   }

//   @Test
//   void testParallel() {
//     Results results = Runner.path("classpath:tests")
//         .tags("~@ignore")
//         // .outputCucumberJson(true)
//         .parallel(1);
//     assertEquals(0, results.getFailCount(), results.getErrorMessages());
//   }
// }
