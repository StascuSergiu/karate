package tests.delete;

import com.intuit.karate.junit5.Karate;

class DeleteRunner {
    @Karate.Test
    Karate testDelete() {
        return Karate.run("delete").relativeTo(getClass());
    }
}
