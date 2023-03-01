package tests.karateConfig;

import com.intuit.karate.junit5.Karate;


class KarateConfigDemoRunner {
    @Karate.Test
    Karate testKarateConfig() {
        //to select environment
        System.setProperty("karate.env", "e2e");
        return Karate.run("karateKonfigDemo").relativeTo(getClass());
    }
}
