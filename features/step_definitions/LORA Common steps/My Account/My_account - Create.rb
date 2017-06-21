
And(/^fill first name$/) do
  @browser.element(:id, "dwfrm_profile_customer_firstname").send_keys(@name1)

end

And(/^fill last name$/) do
  @browser.element(:id, "dwfrm_profile_customer_lastname").send_keys(@name2)
end

And(/^fill email$/) do
  @browser.element(:id, "dwfrm_profile_customer_email").send_keys(@email+'@gmail.com')
end

And(/^fill confirm email$/) do
  @browser.element(:id, "dwfrm_profile_customer_emailconfirm").send_keys(@email+'@gmail.com')
end

And(/^fill password (.*)$/) do |usernewpassword|
  @browser.element(:id, "dwfrm_profile_login_password").to_subtype.clear
  @browser.element(:id, "dwfrm_profile_login_password").send_keys(usernewpassword)
  p @pass
end

And(/^fill confirm password (.*)$/) do |usernewpassword|
  @browser.element(:id, "dwfrm_profile_login_passwordconfirm").to_subtype.clear
  @browser.element(:id, "dwfrm_profile_login_passwordconfirm").send_keys(usernewpassword)

end

Then(/^press on Create your account button$/) do
  @browser.element(:class, "submit_button").click
end

When(/^user is created he should see Welcome message$/) do
 @browser.span(:class, "account_user_name").inner_html == 'Welcome' + " " + @name1
  end

And(/^fill birthday$/) do
  #fill date
  @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_daySelectBoxItText').click
  @browser.element(:link, "02").click
  #fill mm
  @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_monthSelectBoxItText').click
  @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_monthSelectBoxItOptions').element(:link, "03").click
  #fill yy
  @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_yearSelectBoxItText').click
  @browser.element(:link, "2010").click
end

And(/^fill Phone number$/) do
  @browser.element(:id, 'dwfrm_profile_customer_phone').send_keys('0623123123')
end
