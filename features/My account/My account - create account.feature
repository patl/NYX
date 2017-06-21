Feature: Check create account functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

        Scenario Outline:  Fill the Create account form
       #YSL AU Steps from My account - create account
       When user do mouseover on My account link form header
       Then he should see the Sign In pop-up
       Then press on Create an account button
       And Verify that Create My Account page is displayed
       And Verify that Fb icon is displayed
       Then Fill greeting Mr or Mrs or Miss
       #<-------------LORA Steps Start ---------->
       And fill first name
       And fill last name
       And fill birthday
       And fill Phone number
       And fill email
       And fill confirm email
       And fill password <usernewpassword>
       And fill confirm password <usernewpassword>
       Then press on Create your account button
       #<------------LORA Steps End ---------->
       When user is created he should see Welcome message

       Examples:
        |usernewpassword|
        |validpassword|