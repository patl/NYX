Feature: Check Log in functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

  Scenario Outline: Log in from My acc popup
          #YSL AU Steps from My account - Log In

          When user do mouseover on My account link form header
          Then he should see the Sign In pop-up
          Then he press on Connection button
          And Verify validation message for login field
          And verify validation message for password field

           #<-------------LORA Steps Start ---------->
          When he fills login field with <userlogin>
          When he fills password field with <userpassword>
          #<-------------LORA Steps Start ---------->

          #YSL AU Steps from My account - Log In
          Then he press on Connection button
          Then user do mouseover on My account link form header
          When user is logged in he can see his name in pop-up

            Examples:
            |userlogin|userpassword|
            |ogboiko@gmail.com|ogboiko123|

    Scenario: Check reset password
          #YSL AU Steps from My account - Log In
          When user do mouseover on My account link form header
          Then he should see the Sign In pop-up
          Then he press on forgot your password link

          #<-------------LORA Steps Start ---------->
          When user is redirected to Password recovery page
          Then he fill field with email
          And press on submit button
          #<-------------LORA Steps End ---------->

          #YSL AU Steps from My account - Log In
          Then user should see password reset confirmation message

