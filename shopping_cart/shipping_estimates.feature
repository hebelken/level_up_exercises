Feature: Shipping Estimates
  In order to see better understand my total
  As a user
  I want to see shipping estimates

  @happy
  Scenario: See shipping estimates
    When I enter my address information
    Then I should see shipping estimates

  @sad
  Scenario: See shipping estimates
    When I enter address information that is not found
    Then I should an address not found message

  @bad
  Scenario: See shipping estimates
    When I enter bad address information
    Then I should an bad address message