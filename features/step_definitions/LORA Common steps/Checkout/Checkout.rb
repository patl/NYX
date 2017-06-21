Then(/^user press on Secure Checkout  button from cart  page$/) do
  @browser.element(:class, 'cart_actions_bottom').element(:name, 'dwfrm_cart_checkoutCart').click
end


When(/^step:1 Checkout  method is displayed$/) do
  @browser.element(:class, 'chmodule_signin').present? == true
end


And(/^user fills email field with (.*)  on checkout  step:1$/) do |email|
  @browser.element(:id, 'form_emailonly').text_field(:class, 'class.form.input.field').set(email)
end

Then(/^press on Proceed to checkout button on checkout  step:1$/) do
  @browser.element(:id, 'form_emailonly').element(:name, 'dwfrm_login_unregistered').click
end

When(/^step:2 Select your samples is displayed$/) do
  @browser.element(:id, 'form_samples').wait_until_present.present? == true
  end

Then(/^press on Continue to \.\. button from checkout for step:2\/3\/4$/) do
  @browser.element(:class, 'section_submit_action').button(:name, 'dwfrm_checkout_sectionNext').click
end

When(/^step:3 Contact details is displayed$/) do
  @browser.element(:id, 'shippingaddressinfo').wait_until_present.visible? == true
end

Then(/^user fills firts name field with (.*)$/) do |firstName|
  @first_name = firstName
  @browser.text_field(:id, 'dwfrm_singleshipping_shippingAddress_addressFields_firstName').set(firstName)
end

And(/^user fills Last name field with (.*)$/) do |lastName|
  @last_name = lastName
  @browser.text_field(:id, 'dwfrm_singleshipping_shippingAddress_addressFields_lastName').set(lastName)
end

And(/^user fills street number field with (.*)$/) do |streetNumber|
  @street_number = streetNumber
  @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_streetNumber").set(streetNumber)
end

And(/^user fills address name field with (.*)$/) do |addressName|
  @address_Name = addressName
  @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_address1").set(addressName)
end

And(/^user fills city field with (.*)$/) do |city|
  @city = city
  @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_city").set(city)
end

And(/^user fills post code field with (.*)$/) do |postCode|
  @post_Code = postCode
  @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_zip").set(postCode)
end

And(/^user selects State (.*)$/) do |state|
  @state = state
  @browser.element(:id, 'dwfrm_singleshipping_shippingAddress_addressFields_states_stateSelectBoxItText').click
  @browser.element(:text, @state).click
end

And(/^user fills phone number with (.*)$/) do |phoneNumber|
  @phone_Number = phoneNumber
  @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_phone").set(phoneNumber)
end

When(/^step:4 Shipping and Payment step is displayed$/) do
  @browser.element(:class, 'chmodule_shippingmethod').present?
end

Then(/^user verify that correct information is displayed on Contact detail section$/) do
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'mini_address_name').text == @first_name + ' ' + @last_name
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'streetNumber').text == @street_number
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'address1').text == @address_name
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'city').text == @city
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'state_code').text == @state
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'postal_code').text == @post_Code
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'phone').text == @phone_Number
end

When(/^user selects payment method Credit Cart$/) do
  @browser.element(:class, 'chmodule_paymentmethod').element(:text, "Credit Card").click
  @browser.element(:class, 'chmodule_paymentmethod').element(:id, 'PaymentMethod_CREDIT_CARD').wait_until_present.present? == true
end

Then(/^user selects:2 samples form step:2$/) do
  @browser.element(:class, 'samples_list').element(:class, 'sample_item').button(:name, 'dwfrm_samples_addSample').click
  @browser.element(:class, 'samples_list').element(:class, 'sample_item').button(:text, 'Remove').wait_until_present
end


Then(/^fills Name on Cart with (.*) in Payment section on checkout$/) do |ccName|
  @CC_Name = ccName
  @browser.text_field(:id, "dwfrm_billing_paymentMethods_creditCard_owner").set(ccName)
end

And(/^fills Card number with (.*) in payment section on checkout$/) do |ccNumber|
    @browser.text_field(:id, 'dwfrm_billing_paymentMethods_creditCard_number').set(ccNumber)
end

And(/^selects Expiration monht as (.*)$/) do |month|
  @month = month
  @browser.element(:id, 'dwfrm_billing_paymentMethods_creditCard_monthSelectBoxItText').click

  @browser.element(:link_text, @month).click

end

And(/^selects expiration year as (.*)$/) do |year|
  @year = year
  @browser.element(:id, 'dwfrm_billing_paymentMethods_creditCard_yearSelectBoxItText').click
  @browser.element(:link_text, @year).click
end

And(/^fills Security code by (.*)$/) do |cvv|
  @browser.text_field(:id, 'dwfrm_billing_paymentMethods_creditCard_cvn').set(cvv)
end

And(/^Checked the checkbox: I accept the general\.\.\.$/) do
  @browser.element(:class, 'terms_and_conditions').element(:class, 'f_label_value').click
end

When(/^Thank you for placing your order page is displayed$/) do
  @browser.element(:class, 'chmodule_orderconfirmation').wait_until_present.present? == true
end

Then(/^user verify that order number is displayed$/) do
  @browser.element(:class, 'orderconfirmation_info').present?
end

And(/^user verify that data in shipping and billing section is correct$/) do
  @browser.element(:class, 'orderconfirmation_shippingaddress').element(:class, 'mini_address_name').text == @first_name + ' ' + @last_name
  @browser.element(:class, 'orderconfirmation_shippingaddress').element(:class, 'streetNumber').text == @street_number
  @browser.element(:class, 'orderconfirmation_shippingaddress').element(:class, 'address1').text == @address_name
  @browser.element(:class, 'orderconfirmation_shippingaddress').element(:class, 'city').text == @city
  @browser.element(:class, 'orderconfirmation_shippingaddress').element(:class, 'state_code').text == @state
  @browser.element(:class, 'orderconfirmation_shippingaddress').element(:class, 'postal_code').text == @post_Code
  @browser.element(:class, 'orderconfirmation_shippingaddress').element(:class, 'phone').text == @phone_Number
end

And(/^user verify that data for payment method section is correct$/) do
  @browser.element(:class, 'name').text == @CC_Name
 p @browser.element(:class, 'order_subtotal').text
end

When(/^user press on checkout as guest for mobiles$/) do
  @browser.element(:class, 'emailonly').click
end

And(/^user selects (.*)  for mobile$/) do |state|
  #@state = state
  @browser.element(:id, 'dwfrm_singleshipping_shippingAddress_addressFields_states_stateSelectBoxItContainer').click
  @browser.select_list(:id,"dwfrm_singleshipping_shippingAddress_addressFields_states_state").select state
end

