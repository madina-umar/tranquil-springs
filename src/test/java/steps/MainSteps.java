package steps;

import io.cucumber.java.en.Given;

public class MainSteps {

    @Given("Login in to main page")
    public void login_in_to_main_page() throws InterruptedException {
        System.out.println("Hello");


        Thread.sleep(5000);
    }
}
