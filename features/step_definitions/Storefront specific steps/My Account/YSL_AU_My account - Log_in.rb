Then(/^user should see password reset confirmation message$/) do
  @browser.element(:class,"password_reset_modal").element(:css, 'h1').text == 'CHECK YOUR INBOX'
end