Feature: The stage has four elements which keep rotating

  @javascript
  @long
  Scenario: Visit TYPO3.org and check the stage items
    Given I am on home
    When I click on the fourth stage item
    Then I should see the first item going active