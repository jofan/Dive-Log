Feature: Application navigation
  In order to navigate the application
  As a user
  I would like to be able to use a menu
  
  Background:
    Given there is a log numbered "1"
    And I am on the home page
  
  Scenario: Navigate to show
    When I follow "Dive # 1"
    Then I should see "Notes"
    
  Scenario: Navigate to all logs
    When I follow "Dive # 1"
    And I follow "All logs"
    Then I should see "Listing all logs"
    