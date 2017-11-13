Then(/^user press on store locator icon from header$/) do
  @browser.element(:class, 'nyx-utility-menu-store-locator').click
end

When(/^user checked the search filed$/) do
  (@browser.element(:class, 'store-locator-top').present?).should ==true
  @browser.text_field(:id, 'store_search_query').set('Australia')
  @browser.element(:id, 'store_search_submit').click
  end

Then(/^user checked the stores list$/) do
  (@browser.element(:class, 'store_list_item').wait_until_present.present?).should ==true
end

And(/^user checked the map$/) do
  (@browser.element(:id, 'google_map').present?).should ==true
end

When(/^user press on search icon from heder$/) do
  @browser.element(:class, 'nyx-utility-menu-search').click
end


When(/^user see search  suggestion list$/) do
  @browser.element(:class, 'suggestions').wait_until_present
  @suggtext = @browser.element(:class, 'suggestions').text
  (@suggtext.include? @searchtext).should == true
end

And(/^press on search button for search$/) do
  @browser.element(:class, 'search_button').click
end

When(/^user see the search result page$/) do
  @browser.element(:id, 'searchResultsHeadingWrapper').wait_until_present
  (@browser.element(:id, 'searchResultsHeadingWrapper').text.include? @searchtext).should == true
end


Then(/^user entered searchable word (.*)$/) do |serchword|
  @searchtext = serchword
  @browser.text_field(:class, 'search_input').set(serchword)
end