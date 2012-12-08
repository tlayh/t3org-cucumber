Feature: Login with my invalid TYPO3 username on typo3.org

  @long
  Scenario: Visit TYPO3.org with different invalid usernames and password
    Given the session is cleared
    And I am on home
    When I open the login popup
    And I fill in a "invalid" username
    And I press "Login"
    Then I should see "Login or password incorrect."