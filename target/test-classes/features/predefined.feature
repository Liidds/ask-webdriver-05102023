#ASK051023-9
# author: Anna V
#scenario for http://gibiru.com  - DONE
#scenario for https://duckduckgo.com
#scenario for https://swisscows.com
#scenario for https://www.searchencrypt.com
#scenario for https://www.startpage.com
#scenario for https://www.ecosia.org
#scenario for https://www.wiki.com/
#scenario for https://www.givewater.com/
#scenario for https://ekoru.org/

@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//textarea[@name='q']" should be present
    When I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

# Scenario for http://gibiru.com
  @predefined2
  Scenario: Search Engine for http://gibiru.com
    Given I open url "http://gibiru.com"
    Then I should see page title contains "Gibiru"
    Then element with xpath "//input[@id='q']" should be present
    Then I type "Bell pepper" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='web-results']" to be present
    Then element with xpath "//div[@id='web-results']" should contain text "Bell pepper"
    #And I wait for 10 sec

#scenario for https://ekoru.org/
  Scenario: Search Engine for  https://ekoru.org
    Given I open url "https://ekoru.org"
    Then I should see page title contains "Ekoru"
    Then element with xpath "//input[@id='fld_q']" should be present
    When I type "Cucumber" into element with xpath "//input[@id='fld_q']"
    Then I click on element with xpath " //div[@id='btn_search']"
    Then I wait for 3 sec
    Then element with xpath "//div[@id='serp_organic']/div[1]/div[@class='serp-result-web-text']" should contain text "Cucumber"

#scenario for https://www.wiki.com/
  Scenario: Search Engine for  https://www.wiki.com/
    Given I open url "https://www.wiki.com"
    Then I should see page title as "Wiki.com"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "Cucumber" into element with xpath "//input[@name='q']"
    Then I click on element with xpath "//input[@name='btnG']"
    Then I wait for 1 sec
    Then I should see page title as "Form is not secure"
    Then I click on element with xpath "//button[@id='proceed-button']"
    Then I wait for 1 sec
    Then I should see page title as "Wiki.com"
    Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
    Then element with xpath "//*[contains(text(),'Cucumber')]" should contain text "Cucumber"


#scenario for https://www.givewater.com/
  Scenario: Search Engine for https://www.givewater.com
    Given I open url "https://www.givewater.com"
    Then I should see page title contains "giveWater"
    Then element with xpath "//div[@class='pum-content popmake-content']" should be present
    Then I click on element with xpath "//button[@class='pum-close popmake-close']"

    Then element with xpath "//input[@id='site-search']" should be present
    Then I type "Cucumber" into element with xpath "//input[@id='site-search']"
    Then I click on element with xpath "//button[@id='button-addon2']"
    Then I wait for 2 sec
    Then I should see page title contains "GiveWater Web Search"
    Then element with xpath "//div[@class='layout__mainline']" should be present
    Then element with xpath "//div[@class='layout__mainline']" should contain text "Cucumber"

