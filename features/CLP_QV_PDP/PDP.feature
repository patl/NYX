Feature: Check PDP functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

  Scenario Outline: Add product to cart from CLP PDD
    When User press on l1 link from menu
    When L1 page is displayed
    Then check category name in breadcrumb
    Then user selects any refinement
    When user do mousover on first product from grid
    Then press on PDP button
    And user is redirected to PDP
    Then user changed qnt to <qnt>
   # Then user changed other available options (size/color, etc)
    And verify elements on the PDP
    And user press on Add to Bag button on PDP
    When Added to cart pop-up is displayed
    Then close the  pop-up
    When user do mousover on minicart form header
    And user can see correct product
    And user can see correct qnt on minicart
    #And user can see correct price
    When user press on remove link from mini-cart
    Then user should see empty mini-cart
    Examples:
      |qnt|
      |1|

