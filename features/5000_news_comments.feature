Feature: News can be commented

  @long
  Scenario: I can comment and after I am logged out I can see my comment
    Given I am on home
    And that I am logged in
    When I go to new-code-sprint
    Then I add a new comment
    And I can see my comment
    Then I logout
    Then I can see my comment
