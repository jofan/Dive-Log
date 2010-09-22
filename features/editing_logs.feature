Feature: Editing logs
  In order to update log information
  As a user
  I want to be able to do that through an interface
  
  Background:
    Given there is a log numbered "1"
    And I am on the home page
    When I follow "Dive # 1"
    And I follow "Edit"
  
  Scenario: Updating a log
    And I fill in "log_depth" with "50"
    And I press "Save log"
    Then I should see "Log has been updated"
    Then I should be on the log page for "1"
    
  Scenario: Updating a log with invalid attributes
    And I fill in "log_nr" with ""
    And I press "Save log"
    Then I should see "Log has not been updated"