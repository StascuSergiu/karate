package tests.get;

import com.intuit.karate.junit5.Karate;

class GetRunner {
    @Karate.Test
    Karate testGet() {
        return Karate.run("get").relativeTo(getClass());
    }
}
