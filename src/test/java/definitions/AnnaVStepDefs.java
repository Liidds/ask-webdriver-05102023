package definitions;

import cucumber.api.java.en.Then;

import static support.TestContext.getDriver;

public class AnnaVStepDefs {
    @Then("AnnaV navigate to {string}")
    public void annavNavigateTo(String sURL) {
       // getDriver().get("https://skryabin.com/market/quote.html");

        switch(sURL){
            case "Quote":
                getDriver().get("https://skryabin.com/market/quote.html");
                break;
            case "ask-int":
                getDriver().get("http://ask-int.portnov.com");
                break;
            case "portnov.com":
                getDriver().get("https://www.portnov.com/");
                break;
            case "Google":
                getDriver().get("https://www.google.com/");
                break;
            default:
                System.out.println("No URL found");
        }

    }
}
