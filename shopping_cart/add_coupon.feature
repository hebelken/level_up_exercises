Feature: Add Coupon
  In order to get l337 deals
  As a user
  I want to be able to use coupons on items in my cart

  @happy
  Scenario: Use coupon
    Given I have an item in my cart
    When I use a coupon
    Then I should see the cost of the item has decreased

  @sad
  Scenario: Use expired coupon
    Given I have an item in my cart
    When I use an expired coupon
    Then I should see the cost of the item has not changed

  Scenario: Use invalid coupon
    Given I have an item in my cart
    When I use an invalid coupon
    Then I should see the cost of the item has not changed