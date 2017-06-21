When(/^user do mouseover on My account link form header$/) do
  @browser.element(:class, 'account_navigation_link').hover
end

Then(/^he should see the Sign In pop-up$/) do
@browser.element(:class, 'js_accountNavigation').wait_until_present
end

Then(/^press on Create an account button$/) do
  @browser.iframe(:class, 'login_iframe').link(:text, 'Create').click
end

And(/^Verify that Create My Account page is displayed$/) do
  @browser.element(:css, "h1").text == 'Create an Account'.upcase
end


And(/^Verify that Fb icon is displayed$/) do
  @browser.a(:class, "fb_button").present? == true
end

Then(/^Fill greeting Mr or Mrs or Miss$/) do
  @browser.label(:text, "Ms./Mrs.").click
end

Then(/^he press on Connection button$/) do
  @browser.iframe(:class, 'login_iframe').element(:name, 'dwfrm_login_login').click
end

And(/^Verify validation message for login field$/) do
  @browser.iframe(:class, 'login_iframe').span(:class , "error_message").text == "Please enter your email address"
end

And(/^verify validation message for password field$/) do
  @browser.iframe(:class, 'login_iframe').element(:xpath , "//form[@id='dwfrm_login']/fieldset/div[2]/span").text == "Please enter your password"
end

Then(/^he press on forgot your password link$/) do
  @browser.iframe(:class, 'login_iframe').a(:class, "password_reset").click
end
