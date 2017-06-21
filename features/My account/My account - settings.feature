Feature: Change contact information in my account and log in with new credentials
  Background:
    Given open the site
    Then close the newsletter pop-up

        Scenario Outline: Change password from my account
                #YSL AU Steps from My account - Log In
          When user do mouseover on My account link form header
          Then he should see the Sign In pop-up

            #<-------------LORA Steps Start ---------->
          When he fills login field with <userlogin>
          When he fills password field with <userpassword>
            #<-------------LORA Steps Start ---------->

          Then he press on Connection button
          And click on my account from header
          When user is logged in he can see My account title
          Then user press on contact information from my account menu
          And fill confirm email for test user
          And fill password <usernewpassword>
          And fill confirm password <usernewpassword>
          Then press on update button from my account page
          Then user do mouseover on My account link form header
          Then he should see the Sign In pop-up
          And press on Logout
          Then user do mouseover on My account link form header
          When he fills login field with <userlogin>
          Then User fills password field with <usernewpassword>
          Then he press on Connection button
          And click on my account from header
          Then user press on contact information from my account menu
          Then fill confirm email for test user
          Then fill password <userpassword>
          Then fill confirm password <userpassword>
          Then press on update button from my account page
          Examples:
            |userlogin|userpassword|usernewpassword|
            |ogboiko@gmail.com|ogboiko123|usernewpassword|

        Scenario Outline: Save Address in my account
          When user do mouseover on My account link form header
          Then he should see the Sign In pop-up
          When he fills login field with <userlogin>
          When he fills password field with <userpassword>
          Then he press on Connection button
          And click on my account from header
          Then he press on Address book from my account menu
          When user is on Address book page
          Then he press on Add new address button
          When Add new address pop-up is displayed
          Then he fills Address name
          And he fills first name for address with <firstName>
          And he fills last name for address with <lastName>
          And he fills street address for address with <strAddress>
          And he fills Phone number for address with <phone>
          And he fills ZIP code for address wiht <postCode>
          And he selects State for address with <state>
          #And he select country for address
          And he fills city for address with <city>
          Then he press on Save address button
          Then verify that address is saved
          And check address Nickname is correct

          Examples:
              |userlogin|userpassword|firstName|lastName|strAddress|phone|postCode|state|city|
              |ogboiko@gmail.com|ogboiko123|Ole|Boyko|16U Mahony Rd|0999999999|2145|NSW|Constitution Hill|
