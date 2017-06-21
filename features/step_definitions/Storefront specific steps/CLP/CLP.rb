Then(/^user selects any refinement$/) do

  #@browser.element(:class, 'refinement_collections').click
  new_ref = @browser.element(:class, 'plp_navigation_panel').element(:link_text, 'Ligne Visage et Corps').text
  @browser.element(:class, 'plp_navigation_panel').element(:link_text, 'Ligne Visage et Corps').click
  Watir::Wait.until {@browser.element(:class, 'breadcrumb').text == 'Home' + ' ' + (@l1_name).capitalize.gsub(/\b./, &:upcase) + ' ' + new_ref.gsub(/\b./, &:upcase)}
  p @browser.element(:class, 'breadcrumb').text
end


Then(/^user press on the product from the grid$/) do
  @browser.element(:class, 'product_tile_wrapper').click
end