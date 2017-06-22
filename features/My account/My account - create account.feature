Feature: Check create account functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

        Scenario Outline:  Fill the Create account form
       #YSL AU Steps from My account - create account
       When User click on Signin Register link from header
       Then User is redirected to My account sign in  page
       Then press on Create an account button
       And Verify that Create My Account page is displayed
              #<-------------LORA Steps Start ---------->
       And fill first name
       And fill last name
       And fill Phone number
       And fill email

       And fill password <usernewpassword>
       And fill confirm password <usernewpassword>
       Then press on Create your account button
          And check the checkbox Privacy
       #<------------LORA Steps End ---------->
       When user is created he should see Welcome message

       Examples:
        |usernewpassword|
        |validpassword|