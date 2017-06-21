When(/^User do mouseover  on any category$/) do
  @browser.element(:class, 'level_1_list_item').hover
end

Then(/^he should see subcategories$/) do
  @browser.element(:class, 'navigation_dropdown').wait_until_present
end


Then(/^press on any l2 category$/) do
  @l2_name = @browser.element(:class, 'level_2_list_item_link').text
  @browser.element(:class, 'level_2_list_item_link').click
end

When(/^l2 category is displayed$/) do
  @browser.element(:class, 'refinement_header').text == (@l2_name)
  p @l2_name
end

And(/^verify elements on l2$/) do
  @browser.element(:class, 'plp_navigation_panel').visible?
end

And(/^press on Logo$/) do
  @browser.element(:class, 'logo_image').click

end

When(/^User press on l1 link from menu$/) do
  @l1_name = @browser.element(:class, 'menu_list_item_2').text
  @browser.element(:class, 'menu_list_item_2').click
end

When(/^L1 page is displayed$/) do
  @browser.element(:class, 'refinement_header').text == (@l1_name)
  p @l1_name
end

Then(/^check category name in breadcrumb/) do
  @browser.element(:class, 'breadcrumb').text == 'Home' + ' ' + (@l1_name).capitalize.gsub(/\b./, &:upcase)
end


When(/^user do mousover on first product from grid$/) do
  @browser.element(:class, 'product_image_topwrapper').hover
  @product_name = @browser.element(:class, 'action_product_block').element(:class, 'product_name').text
end

Then(/^press on QV button$/) do
  #product_name = @browser.element(:class, 'product_name').text
  @browser.element(:css, '.quickviewbutton>span').click
end

And(/^user should see QV pop\-up displayed$/) do
  @browser.element(:id, 'QuickViewDialog').wait_until_present.visible?
end


And(/^verify elements on the QV pop\-up$/) do
  @browser.element(:class, 'js_pdpMain').element(:class, 'product_name').present?
  @product_name = @browser.element(:class, 'js_pdpMain').element(:class, 'product_name').text
  @browser.element(:class, 'js_pdpMain').element(:class, 'product_image').present?
  @browser.element(:class, 'js_pdpMain').element(:id, 'quantitySelectBoxItText').present?
  @qnt = @browser.element(:class, 'js_pdpMain').element(:id, 'quantitySelectBoxItText').text
  @browser.element(:class, 'js_pdpMain').element(:class, 'product_price').present?
  @product_price = @browser.element(:class, 'js_pdpMain').element(:class, 'product_price').text

end

And(/^user press on Add to Bag button$/) do
  @browser.element(:class, 'addtocartbutton').click
end

Then(/^minicart pop\-up is displayed$/) do
  sleep(5)
  @browser.element(:class, 'mini_cart_content_inner').wait_until_present.visible?

end

And(/^user can see correct product$/) do
  @browser.element(:class, 'mini_cart_content_inner').element(:class, 'product_name').text == @product_name

end

And(/^user can see correct qnt on minicart$/) do
  @browser.element(:class, 'mini_cart_content_inner').element(:class, 'selectboxit-text').text == @qnt
end

And(/^user can see correct price$/) do
 @browser.element(:class, 'mini_cart_content_inner').element(:class, 'mini_cart_price').text == @product_price
end

Then(/^user press on remove link from mini\-cart$/) do
  @browser.element(:class, 'mini_cart_content_inner').element(:class, 'product_remove').click
end


Then(/^user should see empty mini-cart$/) do
  @browser.element(:class, 'mini_cart_empty_main').present?
end

Then(/^check that Sort by drop\-down is present$/) do
  @browser.element(:name, 'sort_by_list').present? == true
end

And(/^Change “Sort by” to “Price High to Low”$/) do
  @browser.element(:name, 'sort_by_list').click
  @browser.element(:text, 'Price (high to low)').click
end


Then(/^Check that products are sorted correctly on the grid$/) do
  sleep(3)
  price = @browser.element(:class, 'search_result_items').elements(:class, 'product_price').map do |element|
  element.text
end
new = price
new == price.sort{|a,b| a <=> a}
end

Then(/^user changed qnt to (.*)$/) do |qnt|
  @asd = qnt
  @browser.element(:class, 'js_pdpMain').element(:id, 'quantitySelectBoxItText').present?
  @browser.element(:class, 'js_pdpMain').element(:id, 'quantitySelectBoxItText').click
  @browser.element(:class, 'js_pdpMain').element(:id, 'quantitySelectBoxItOptions').element(:link_text, @asd).click

end


Then(/^user press on Checkout button on minicart pop\-up$/) do
  @browser.element(:class, 'mini_cart_with_products').element(:class, 'mini_cart_link_cart').click
end

When(/^Cart page is displayed$/) do
  sleep (5)
  @browser.element(:class, 'cart_title').wait_until_present
end

And(/^user can see added product to cart page$/) do
  @product_in_cart = @browser.element(:class, 'cart_row').element(:class, 'product_name').text
  @product_in_cart == @product_name
  @subtotal = @browser.element(:class, 'order_subtotal').text
end

Then(/^user press on remove link on cart page$/) do
  @browser.element(:class, 'cart_row').element(:name, 'dwfrm_cart_shipments_i0_items_i0_deleteProduct').click
end

And(/^user should see empty cart page$/) do
  @browser.element(:class, 'empty-cart-wrapper').wait_until_present == true
end

Then(/^User press on Wish list from QV$/) do
  @browser.element(:class, 'wishlist_action').click
end

When(/^User see create\/login pop\-up$/) do
  @browser.element(:id, "modalLogin").wait_until_present
end

Then(/^close the wishlist pop\-up$/) do
  @browser.element(:class, 'customwishlist').element(:class, "ui-icon-closethick").wait_until_present.click
end


Then(/^press on PDP button$/) do
  @browser.element(:class, 'js_learnmorebutton').click
end

And(/^user is redirected to PDP$/) do
  (@browser.element(:id, 'pdpMain').element(:class, 'product_name').wait_until_present.text == @product_name) == true
end

Then(/^user changed other available options \(size\/color, etc\)$/) do
  @option = @browser.element(:id, 'va-colorSelectBoxItText').present?
  if @option == true
    @browse.element(:id, 'colorSelectBoxItText').click
@browser.element(:data-id, '202 Rouge Splash ').click
  else
    p thre are no other options
  end
end

And(/^verify elements on the PDP$/) do
  @browser.element(:class, 'main_image').present? == true
  @browser.element(:id, 'thumbnails').present? == true
  @browser.element(:class, 'pdp_top_content_wrapper').element(:class, 'product_name').present? == true
  @browser.element(:class, 'pdp_top_content_wrapper').element(:class, 'rating_container').present? == true
  @browser.element(:class, 'pdp_top_content_wrapper').element(:class, 'expand_section_wrapper').present? == true
  @browser.element(:class, 'pdp_right_column_bottom').element(:class, 'variant_dropdown').present? == true
  @browser.element(:class, 'pdp_right_column_bottom').element(:class, 'add_to_cart').present? == true
  @browser.element(:class, 'pdp_right_column_bottom').element(:class, 'b-price').present? == true
  @browser.element(:class, 'pdp_right_column_bottom').element(:class, 'product_actions').present? == true
  @browser.element(:id, 'pdpMain').element(:class, 'description_benefits_section').present? == true
end

And(/^user press on Add to Bag button on PDP$/) do
  @browser.element(:class, 'pdp_right_column_bottom').element(:class, 'add_to_cart').click

end

When(/^User press on l2_l1 link from burger menu$/) do
  @browser.element(:class, 'menu_list_item_2').click
  @browser.element(:class, 'menu_list_item_2_1 ').click
  @browser.element(:class, 'menu_list_item_2_1_1').text
  @browser.element(:class, 'menu_list_item_2_1_1').click
end

And(/^user press on Add to Bag button on PDP for mobile$/) do
  @browser.element(:class, 'header_promo_close').click
  @browser.element(:class, 'button_wrapper').button(:class, 'add_to_cart').click
end

And(/^user press on go to cart page from pop\-up$/) do
  @browser.element(:class, 'addedtocart_popup_link').click
end