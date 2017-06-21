Feature: Check checkout functionality as guest user
  Background:
    Given open the site
    #Then close the newsletter pop-up
@smoke
  Scenario Outline: Make Checkout as guest user
    When User press on l1 link from menu
    When L1 page is displayed
    Then check category name in breadcrumb
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
   Then user press on Secure Checkout  button from cart  page
    When step:1 Checkout  method is displayed
    And user fills email field with <email>  on checkout  step:1
    Then press on Proceed to checkout button on checkout  step:1
    When step:2 Select your samples is displayed
    Then press on Continue to .. button from checkout for step:2/3/4
    When step:3 Contact details is displayed
    Then user fills firts name field with <firstName>
    And user fills Last name field with <lastName>
    And user fills street number field with <streetNumber>
    And user fills address name field with <addressName>
    And user fills city field with <city>
    And user fills post code field with <postCode>
    And user selects State <state>
    And user fills phone number with <phoneNumber>
    Then press on Continue to .. button from checkout for step:2/3/4
    When step:4 Shipping and Payment step is displayed
    Then user verify that correct information is displayed on Contact detail section
    When user selects payment method Credit Cart
    Then fills Name on Cart with <ccName> in Payment section on checkout
    And fills Card number with <ccNumber> in payment section on checkout
    And selects Expiration monht as <month>
    And selects expiration year as <year>
    And fills Security code by <cvv>
    And Checked the checkbox: I accept the general...
    Then press on Continue to .. button from checkout for step:2/3/4
    When Thank you for placing your order page is displayed
    Then user verify that order number is displayed
    And user verify that data in shipping and billing section is correct
    And user verify that data for payment method section is correct
    #And user verify that data in payment total section is correct

    Examples:
      |       email     |firstName|lastName|streetNumber|addressName|city              |postCode|state|phoneNumber|ccName|ccNumber|month|year|cvv|
      |ogboiko@gmail.com|   Ole   |  Boyko |16u         |Mahony Rd  |Constitution Hill |2145    |NSW   |0999999999|My cc name|4111111111111111|April|2019|737|





  Scenario Outline: Make Checkout as guest user with samples
    When User press on l1 link from menu
    When L1 page is displayed
    Then check category name in breadcrumb
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
    Then user press on Secure Checkout  button from cart  page
    When step:1 Checkout  method is displayed
    And user fills email field with <email>  on checkout  step:1
    Then press on Proceed to checkout button on checkout  step:1
    When step:2 Select your samples is displayed
    Then user selects:2 samples form step:2
    Then press on Continue to .. button from checkout for step:2/3/4
    When step:3 Contact details is displayed
    Then user fills firts name field with <firstName>
    And user fills Last name field with <lastName>
    And user fills street number field with <streetNumber>
    And user fills address name field with <addressName>
    And user fills city field with <city>
    And user fills post code field with <postCode>
    And user selects State <state>
    And user fills phone number with <phoneNumber>
    Then press on Continue to .. button from checkout for step:2/3/4
    When step:4 Shipping and Payment step is displayed
    Then user verify that correct information is displayed on Contact detail section
    When user selects payment method Credit Cart
    Then fills Name on Cart with <ccName> in Payment section on checkout
    And fills Card number with <ccNumber> in payment section on checkout
    And selects Expiration monht as <month>
    And selects expiration year as <year>
    And fills Security code by <cvv>
    And Checked the checkbox: I accept the general...
    Then press on Continue to .. button from checkout for step:2/3/4
    When Thank you for placing your order page is displayed
    Then user verify that order number is displayed
    And user verify that data in shipping and billing section is correct
    And user verify that data for payment method section is correct
   # And user verify that data in payment total section is correct


    Examples:
      |       email     |firstName|lastName|streetNumber|addressName|city              |postCode|state|phoneNumber|ccName|ccNumber|month|year|cvv|
      |ogboiko@gmail.com|   Ole   |  Boyko |16u         |Mahony Rd  |Constitution Hill |2145    |NSW   |0999999999|My cc name|4111111111111111|April|2019|737|


  Scenario Outline: Make Checkout as guest user with Promo Code
    When User press on l1 link from menu
    When L1 page is displayed
    Then check category name in breadcrumb
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
    When user fills promo code field with <promocode>
    Then user press on Apply button
    And Verify that promo code is applied
    Then user press on Secure Checkout  button from cart  page
    When step:1 Checkout  method is displayed
    And user fills email field with <email>  on checkout  step:1
    Then press on Proceed to checkout button on checkout  step:1
    When step:2 Select your samples is displayed
       Then press on Continue to .. button from checkout for step:2/3/4
    When step:3 Contact details is displayed
    Then user fills firts name field with <firstName>
    And user fills Last name field with <lastName>
    And user fills street number field with <streetNumber>
    And user fills address name field with <addressName>
    And user fills city field with <city>
    And user fills post code field with <postCode>
    And user selects State <state>
    And user fills phone number with <phoneNumber>
    Then press on Continue to .. button from checkout for step:2/3/4
    When step:4 Shipping and Payment step is displayed
    Then user verify that correct information is displayed on Contact detail section
    When user selects payment method Credit Cart
    Then fills Name on Cart with <ccName> in Payment section on checkout
    And fills Card number with <ccNumber> in payment section on checkout
    And selects Expiration monht as <month>
    And selects expiration year as <year>
    And fills Security code by <cvv>
    And Checked the checkbox: I accept the general...
    Then press on Continue to .. button from checkout for step:2/3/4
    When Thank you for placing your order page is displayed
    Then user verify that order number is displayed
    And user verify that data in shipping and billing section is correct
    And user verify that data for payment method section is correct
   # And user verify that data in payment total section is correct

        Examples:
      |       email     |firstName|lastName|streetNumber|addressName|city              |postCode|state|phoneNumber|ccName|ccNumber|month|year|cvv|
      |ogboiko@gmail.com|   Ole   |  Boyko |16u         |Mahony Rd  |Constitution Hill |2145    |NSW   |0999999999|My cc name|4111111111111111|April|2019|737|


  @mobile
  Scenario Outline: Make Checkout as guest user MOBILE
    When user close toolkit
    And user press on burger menu
    When User press on l2_l1 link from burger menu
    Then user press on the product from the grid
    And user press on Add to Bag button on PDP for mobile
    Then Added to cart pop-up is displayed
    And user press on go to cart page from pop-up
    When Cart page is displayed
    Then user press on Secure Checkout  button from cart  page
    When step:1 Checkout  method is displayed
    When user press on checkout as guest for mobiles
    And user fills email field with <email>  on checkout  step:1
    Then press on Proceed to checkout button on checkout  step:1
    #When step:2 Select your samples is displayed
   # Then press on Continue to .. button from checkout for step:2/3/4
    When step:3 Contact details is displayed
    Then user fills firts name field with <firstName>
    And user fills Last name field with <lastName>
    And user fills street number field with <streetNumber>
    And user fills address name field with <addressName>
    And user fills city field with <city>
    And user fills post code field with <postCode>
    And user selects <state>  for mobile
    And user fills phone number with <phoneNumber>
    Then press on Continue to .. button from checkout for step:2/3/4
    When step:4 Shipping and Payment step is displayed
    Then user verify that correct information is displayed on Contact detail section
    When user selects payment method Credit Cart
    Then fills Name on Cart with <ccName> in Payment section on checkout
    And fills Card number with <ccNumber> in payment section on checkout
    And selects Expiration monht as <month>
    And selects expiration year as <year>
    And fills Security code by <cvv>
    And Checked the checkbox: I accept the general...
    Then press on Continue to .. button from checkout for step:2/3/4
    When Thank you for placing your order page is displayed
    Then user verify that order number is displayed
    And user verify that data in shipping and billing section is correct
    And user verify that data for payment method section is correct
    #And user verify that data in payment total section is correct


    Examples:
      |       email     |firstName|lastName|streetNumber|addressName|city              |postCode|state|phoneNumber|ccName|ccNumber|month|year|cvv|
      |ogboiko@gmail.com|   Ole   |  Boyko |16u         |Mahony Rd  |Constitution Hill |2145    |NSW   |0999999999|My cc name|4111111111111111|April|2019|737|



