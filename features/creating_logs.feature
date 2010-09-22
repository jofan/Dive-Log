Feature: Creating logs
  In order to collect scuba diving logs
  As a user
  I want to create them easily
  
  Background:
    Given I am on the home page
    When I follow "Add log"
  
  Scenario: Creating a log
    And I fill in "log_nr" with "1"
    And I fill in "log_dive_site" with "Ablaham"
    And I fill in "log_date" with "2010-08-01"
    And I fill in "log_depth" with "18"
    And I fill in "log_bottom_time" with "45"
    And I fill in "log_notes" with "Nice dive!"
    And I fill in "log_buddy" with "Johanna"
    And I press "Save log"
    Then I should see "Log was saved successfully"
    And I should be on the log page for "1"
    And I should see "Dive log # 1"
    
  Scenario: Creating a log without a number
    And I press "Save log"
    Then I should see "Log has not been created"
    Then I should see "Nr can't be blank"