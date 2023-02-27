package tests.post;

import com.intuit.karate.junit5.Karate;

class PostRunner {
    @Karate.Test
    Karate testPost() {
        return Karate.run("post").relativeTo(getClass());
    }
}
