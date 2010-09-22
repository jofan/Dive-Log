Feature: Deleting logs
  In order to remove logs
  As a user
  I would like to be able to easily delete them
  
  Scenario: Deleting a log
    Given there is a log numbered "1"
    And I am on the home page
    When I follow "Dive # 1"
    And I follow "Delete"
    Then I should see "Log has been deleted"
    And I should not see "Dive # 1"