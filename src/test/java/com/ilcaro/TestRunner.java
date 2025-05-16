package com.ilcaro;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/features",
        glue = "com/ilcaro/stepDefinitions",
        tags = "@wrongPassword",
        plugin = {"pretty", "json:build/cucumber.json"})

public class TestRunner {
}
// gradle clean test