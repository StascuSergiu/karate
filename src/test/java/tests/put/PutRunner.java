package tests.put;

import com.intuit.karate.junit5.Karate;

class PutRunner {
    @Karate.Test
    Karate testPost() {
        return Karate.run("put").relativeTo(getClass());
    }
}
