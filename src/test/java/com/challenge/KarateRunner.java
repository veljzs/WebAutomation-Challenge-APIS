package com.challenge;


import com.intuit.karate.junit5.Karate;

public class KarateRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:features/demoblaze-Api-Test.feature").relativeTo(getClass());
    }
}