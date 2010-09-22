Feature: Viewing logs
  In order to view my logs
  As a user
  I want to be able to see a table of logged scuba dives
  
  Scenario: Listing all logs
    Given there is a log numbered "1"
    And I am on the home page
    When I follow "1"
    Then I should be on the log page for "1"