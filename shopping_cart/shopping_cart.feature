Feature: Shopping Cart
  In order to purchase multiple items at once
  As a user
  I want to save items that I plan on purchasing

  @happy
  Scenario: Store Items
    Given I am not logged in
    And I have an item in my cart
    When I refresh the page
    Then the item should still be in my cart

  Scenario: Store Items
    Given I am logged in
    And I have an item in my cart
    When I refresh the page
    Then the item should still be in my cart
