Feature: Visit item page from cart
  In order to see item details easily
  As a user
  I want to be able to access the item page from my cart

  @happy
  Scenario: Visit item page
    Given I have an item in my cart
    When I click on the item
    Then I should see the item page
