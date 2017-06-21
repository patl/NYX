Feature: Check Cart functionality
  Background:
    Given open the site
    Then close the newsletter pop-up
@smoke
    Scenario Outline: Check Cart functionality as register user
      When user do mouseover on My account link form header
      Then he should see the Sign In pop-up
      When he fills login field with <userlogin>
      When he fills password field with <userpassword>
      Then he press on Connection button
      Then user do mouseover on My account link form header
      When user is logged in he can see his name in pop-up
      When User press on l1 link from menu
      When L1 page is displayed
      Then check category name in breadcrumb
      Then user selects any refinement
      When user do mousover on first product from grid
      Then press on QV button
      And user should see QV pop-up displayed
      And verify elements on the QV pop-up
      And user press on Add to Bag button
      Then minicart pop-up is displayed
      And user can see correct product
      And user can see correct qnt on minicart
      Then user press on Checkout button on minicart pop-up
      When Cart page is displayed
      And user can see added product to cart page
      When user press on Edit link for product on Cart page
      And user should see QV pop-up displayed
      Then user changed qnt to <qnt>
      And user press on Add to Bag button
      When Cart page is displayed
      Then user verified that price is multiply to <qnt>
      Then user press on add to wishlist from cart page
      When user see confirmation pop-up
      Then he press on See my wishlist link
      When user is redirected to my account - wishlist
      And he verified that product is displayed
      Then he press on remove link from wishlist
      Then user do mousover on minicart form header
      And user press on Checkout button on minicart pop-up
      When Cart page is displayed
      Then user press on remove link on cart page
      And user should see empty cart page

       Examples:
        |userlogin|userpassword|qnt|
        |ogboiko@gmail.com|ogboiko123|2|



    Scenario Outline: Check Cart Functionality as guest user
      When User press on l1 link from menu
      When L1 page is displayed
      Then check category name in breadcrumb
      Then user selects any refinement
      When user do mousover on first product from grid
      Then press on QV button
      And user should see QV pop-up displayed
      And verify elements on the QV pop-up
      And user press on Add to Bag button
      Then minicart pop-up is displayed
      And user can see correct product
      And user can see correct qnt on minicart
      Then user press on Checkout button on minicart pop-up
      When Cart page is displayed
      And user can see added product to cart page
      When user press on Edit link for product on Cart page
      Then user changed qnt to <qnt>
      And user press on Add to Bag button
      When Cart page is displayed
      Then user verified that price is multiply to <qnt>
      Then user press on add to wishlist from cart page
      When User see create/login pop-up
      Then close the  pop-up
      When Cart page is displayed
      Then user press on remove link on cart page
      And user should see empty cart page
     Examples:
      |qnt|
      |2|



