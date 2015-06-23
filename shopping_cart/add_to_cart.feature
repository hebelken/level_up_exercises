Feature: Add to cart
  In order to purchase multiple items at once
  As a user
  I want to add items to my cart

  @happy
  Scenario: Add item
    When I add an item to my cart
    Then the number of items in my cart should increase by 1

  @sad
  Scenario: Add item (out of stock)
    When I add an item to my cart
    Then the number of items in my cart should not change
    And I should see an out of stock message
