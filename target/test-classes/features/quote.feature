#Test Quote application
# https://skryabin.com/market/quote.html
#Author: Anna V
@quote
  Feature: Quote Test Scenarios
    Background:
      Given AnnaV navigate to "Quote"
      Then I resize window to 1920 and 1080
    @quote1
    Scenario: Validate Location address
      #Given I open url "https://skryabin.com/market/quote.html"
      #Then I resize window to 1920 and 1080
      Then element with xpath "//b[@id='location']" should be displayed
      Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
      #Ipad portrait mode
      Then I resize window to 768 and 1024
      Then element with xpath "//b[@id='location']" should be displayed
      Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
      #Phone portait mode
      Then I resize window to 375 and 667
      Then element with xpath "//b[@id='location']" should not be displayed

    @quote2
    Scenario: Name field verification
      Then I click on element with xpath "//input[@id='name']"
      Then element with xpath "//input[@id='firstName']" should be displayed
      And I type "First" into element with xpath "//input[@id='firstName']"
      Then element with xpath "//input[@id='middleName']" should be displayed
      And I type "Middle" into element with xpath "//input[@id='middleName']"
      Then element with xpath "//input[@id='lastName']" should be displayed
      And I type "Last" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should be present
      Then element with xpath "//input[@id='name']" should have attribute "value" as "First Middle Last"
      Then I wait for 10 sec

    @quote3
    Scenario Outline: Name field verification data driven
      Then I click on element with xpath "//input[@id='name']"
      Then element with xpath "//input[@id='firstName']" should be displayed
      And I type "<firstName>" into element with xpath "//input[@id='firstName']"
      Then element with xpath "//input[@id='middleName']" should be displayed
      And I type "<middleName>" into element with xpath "//input[@id='middleName']"
      Then element with xpath "//input[@id='lastName']" should be displayed
      And I type "<lastName>" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should be present
      Then element with xpath "//input[@id='name']" should have attribute "value" as "<fullName>"

      Examples:
        | firstName | middleName | lastName | fullName |
        | First | Middle | Last  | First Middle Last |
        | A | B | C | A B C |
        | 1 | 2 | 3  | 1 2 3 |
        | A |  | C  | A  C |
        | A |  | C  | A C |
        | A | B | C  | ABC |
        | A | B |   | A B |
        | A1 | B2 | C3  | A1 B2 C3 |
        | A# | B$ | C%  | A# B$ C% |
        |  A |  B |  C |  A  B  C |

      Scenario: Open URL based on your own request and your own method
        Then AnnaV navigate to "Quote"












