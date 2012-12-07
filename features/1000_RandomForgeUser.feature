Feature: Random Forge Users show up on homepage

  @javascript
  Scenario: Visit TYPO3.org and check user list
    Given I am on home
    When I open the social area
    Then I should see user profiles
    And forge activity messages