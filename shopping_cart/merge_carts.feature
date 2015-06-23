Feature: Merge Carts
  In order have a better user experience
  As a user
  I want to be able to see my new items along with any previous items that I have selected

  @happy
  Scenario: Merge Carts (different items)
    Given I have an item in my cart
    And I am logged out
    When I add a different item to my cart
    And I log in
    Then I should see both items in my cart

  Scenario: Merge Carts (same item)
    Given I have an item in my cart
    And I am logged out
    When I add the same item to my cart
    And I log in
    Then I should see 2 of the item in my cart
