Feature: Check QV functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

  Scenario Outline: Add product to cart from CLP QV
    When User click on Signin Register link from header
    Then User is redirected to My account sign in  page
    When he fills login field with <userlogin>
    When he fills password field with <userpassword>
    Then he press on Connection button
    When user is logged in he can see his name in header
    When User press on l1 link from menu
    When L1 page is displayed
    Then user selects any refinement
    When user do mousover on first product from grid
    Then press on QV button
    And user should see QV pop-up displayed
    And verify elements on the QV pop-up
    And user verify that Find a store button is displayed
    Examples:
      |qnt|userlogin|userpassword|
      |1|ogboiko@gmail.com|ogboiko123|




