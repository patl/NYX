Feature: Check Log in functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

  Scenario Outline: Log in from My acc popup
          #YSL AU Steps from My account - Log In

          When User click on Signin Register link from header
          Then User is redirected to My account sign in  page
          Then he press on Connection button
          And Verify validation message for login field

          When he fills login field with <userlogin>
          When he fills password field with <userpassword>

          Then he press on Connection button
         #ToDO

            Examples:
            |userlogin|userpassword|
            |ogboiko@gmail.com|ogboiko123|

    Scenario: Check reset password
          #YSL AU Steps from My account - Log In
          When User click on Signin Register link from header
          Then User is redirected to My account sign in  page
          Then he press on forgot your password link

          #<-------------LORA Steps Start ---------->
          When Reset password popup is displayed
          Then he fill field with email
          And press on submit button
          #<-------------LORA Steps End ---------->

          #YSL AU Steps from My account - Log In
          Then user should see password reset confirmation message
      And press on close button

