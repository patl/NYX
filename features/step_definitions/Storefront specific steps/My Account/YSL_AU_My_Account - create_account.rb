When(/^User click on Signin Register link from header$/) do
  @browser.element(:class, 'account_navigation_link').click
end

Then(/^User is redirected to My account sign in  page$/) do
@browser.element(:class, 'account_signin').wait_until_present
end

Then(/^press on Create an account button$/) do
  @browser.element(:class, 'create_account_button').click
end

And(/^Verify that Create My Account page is displayed$/) do
  @browser.element(:css, "h1").text == 'Create Account'.upcase
end


And(/^Verify that Fb icon is displayed$/) do
  @browser.a(:class, "fb_button").present? == true
end

Then(/^Fill greeting Mr or Mrs or Miss$/) do
  @browser.label(:text, "Ms./Mrs.").click
end

Then(/^he press on Connection button$/) do
  @browser.element(:name, 'dwfrm_login_login').click
end

And(/^Verify validation message for login field$/) do
  @browser.element(:class , "f_error_message").text == "Please enter your email address"
end


Then(/^he press on forgot your password link$/) do
  @browser.link(:class, "password_reset").click
end
