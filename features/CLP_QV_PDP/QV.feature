Feature: Check QV functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

  Scenario Outline: Add product to cart from CLP QV
    When User press on l1 link from menu
    When L1 page is displayed
    Then check category name in breadcrumb
    Then user selects any refinement
    When user do mousover on first product from grid
    Then press on QV button
    And user should see QV pop-up displayed
    Then user changed qnt to <qnt>
    And verify elements on the QV pop-up
    And user press on Add to Bag button
    Then minicart pop-up is displayed
    And user can see correct product
    And user can see correct qnt on minicart
      #And user can see correct price
    When user press on remove link from mini-cart
    Then user should see empty mini-cart
    Examples:
      |qnt|
      |1|

  Scenario Outline: Variation Functionality on Quick View

    When User press on l1 link from menu
    When L1 page is displayed
    Then check category name in breadcrumb
    Then user selects any refinement
    When user do mousover on first product from grid
    Then press on QV button
    And user should see QV pop-up displayed
    Then user changed qnt to <qnt>
    And verify elements on the QV pop-up
    And user press on Add to Bag button
    Then minicart pop-up is displayed
    And user can see correct product
    And user can see correct qnt on minicart
    #And user can see correct price
    Then user press on Checkout button on minicart pop-up
    When Cart page is displayed
    And user can see added product to cart page
    Then user press on remove link on cart page
    And user should see empty cart page
    Examples:
      |qnt|
      |2|

  Scenario: Add to Wish list as Guest user
    When User press on l1 link from menu
    When L1 page is displayed
    Then check category name in breadcrumb
    Then user selects any refinement
    When user do mousover on first product from grid
    Then press on QV button
    And user should see QV pop-up displayed
    Then User press on Wish list from QV
    When User see create/login pop-up
    Then close the wishlist pop-up

  Scenario Outline: Add to Wish list as Register user
    When user do mouseover on My account link form header
    Then he should see the Sign In pop-up
    When he fills login field with <userlogin>
    When he fills password field with <userpassword>
    Then he press on Connection button
    When User press on l1 link from menu
    When L1 page is displayed
    Then check category name in breadcrumb
    Then user selects any refinement
    When user do mousover on first product from grid
    Then press on QV button
    And user should see QV pop-up displayed
    Then User press on Wish list from QV

    Examples:
      |userlogin|userpassword|
      |ogboiko@gmail.com|ogboiko123|