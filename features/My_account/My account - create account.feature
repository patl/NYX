Feature: Check create account functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

        Scenario Outline:  Fill the Create account form
       When User click on Signin Register link from header
       Then User is redirected to My account sign in  page
       Then press on Create an account button
       And Verify that Create My Account page is displayed
       And user fills first name with <firstname>
       And user fills last name with <lastname>
       And user fills mobile number on register page wit <mobile>
       And user fills email
       And user fills postal code with <postcode>
       And user fills password
       And user fills confirm password
       And fill birthday
       And check the checkbox Privacy
       And check the checkbox SMS
       Then press on Create your account button
       Then verify that user is logged in and welcome <firstname> is displayed in header

       Examples:
        |firstname|lastname|mobile    |postcode|
        |Firstname|Lastname|0652145874|1234    |