Feature: Create a new account for TYPO3 org

  @long
  Scenario Outline: Visit TYPO3.org and test invalid usernames
    Given I am on home
    When I open the login popup
    And I follow "Sign up!"
    And I fill in invalid <invalid_username> data
    And I press "Sign up!"
    Then I should see an error message
  Examples:
    | invalid_username |
    | as               |
    | !                |
    | 23               |
    | %$!              |