Feature: Change Quantities
  In order to purchase multiple items at once
  As a user
  I want to change the number of items in my cart

  @happy
  Scenario: Add one
    Given I have an item in my cart
    When I increase its quantity by 1
    Then I should see 1 more of that item in my cart

  Scenario: Decrease one
    Given I have two of an item in my cart
    When I decrease its quantity by 1
    Then I should see 1 of that item in my cart

  Scenario: Decrease removes item
    Given I have an item in my cart
    When I decrease its quantity by 1
    Then the item should not be in my cart

  @sad
  Scenario: Add one (out of stock)
    Given I have an item in my cart
    And the item is out of stock
    When I increase its quantity by 1
    Then I should see that item in my cart
    And I should see an out of stock message
