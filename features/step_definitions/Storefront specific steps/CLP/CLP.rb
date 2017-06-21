Then(/^user selects any refinement$/) do

  #@browser.element(:class, 'refinement_collections').click
  new_ref = @browser.element(:class, 'plp_navigation_panel').element(:link_text, 'Ligne Visage et Corps').text
  @browser.element(:class, 'refinement_category').element(:class, 'refinement_list_link').click
 end


Then(/^user press on the product from the grid$/) do
  @browser.element(:class, 'product_tile_wrapper').click
end

And(/^user verify that Find a store button is displayed$/) do
  @browser.element(:class, 'find-store').present?
end