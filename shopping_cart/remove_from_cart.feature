Feature: Shopping Cart
  In order to purchase fewer items
  As a user
  I want to remove an item from my cart

  @happy
  Scenario: Remove item
    Given I have an item in my cart
    When I remove the item
    Then the item should not be in my cart
