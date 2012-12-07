@login
Feature: Login with my TYPO3 username on typo3.org

  Scenario: Visit TYPO3.org with a valid username and password
    Given I am on home
    When I open the login popup
    And I fill in a "valid" username
    And I press "Login"
    Then I should see "My account"
# t3ts1341701413 > valid
#	Scenario: Visit TYPO3.org with a invalid username and password
#		Given I am on home
#		When I follow "Login"
#		And I fill in "Username" with "test-user-1"
#		And I fill in "Password" with "test-password-2"
#		And I press "Login"
#		Then I should see "Login or password incorrect."