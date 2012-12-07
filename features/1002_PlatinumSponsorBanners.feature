Feature: Pages hold two or more Platinum Sponsor banners

  @javascript @long
  Scenario Outline: Homepage has 4 sponsor banners
    Given I am on <page_name>
    Then I should see <amount> active sponsor banners
    And the sponsor banners should be different
    And I should see them changing
  Examples:
    | page_name | amount |
    | home      | 4      |
    | download  | 2      |
    | ter       | 2      |