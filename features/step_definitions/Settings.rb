require 'cucumber'
require 'watir'
require 'webdriver-user-agent'

Given(/^open the site$/) do

@br = :chrome

 def desktopbrowser
  @browser = Watir::Browser.new @br
  @browser.cookies.clear
  @browser.window.maximize
 end


if @br == :chrome
   desktopbrowser
   @browser.goto 'https://storefront:loreal1@dev09-latam-loreal.demandware.net/on/demandware.store/Sites-nyxcosmetics-Site/en_GB/Home-Show'
   @browser.goto 'http://dev09-latam-loreal.demandware.net/on/demandware.store/Sites-nyxcosmetics-Site/en_GB/Home-Show'
   end
if @br == :ff
  desktopbrowser
  @browser.goto 'https://storefront:loreal1@dev25-emea-loreal.demandware.net/s/ysl-au/en_AU/home'
  alert = @browser.alert.exists?
   if alert == true
     @browser.alert.ok
   else
     p 'no alert'
   end
  sleep (10)
end

if @br == :ie
  desktopbrowser
  IO.popen("C:\\Users\\ogboi\\OneDrive\\Documents\\GitHub\\LORA\\features\\support\\authwibdow.exe")
  @browser.goto 'https://dev25-emea-loreal.demandware.net/s/ysl-au/en_AU/home'
end

  if @br == :edge
    IO.popen("C:\\Users\\ogboi\\OneDrive\\Documents\\GitHub\\LORA\\features\\support\\authwibdow.exe")
    @browser.goto 'https://dev25-emea-loreal.demandware.net/s/ysl-au/en_AU/home'
  end

if @br == :mobile
  driver = Webdriver::UserAgent.driver(browser: :chrome, agent: :iphone6splus, orientation: :portrait)
  @browser = Watir::Browser.new driver
  @browser.goto 'https://storefront:loreal1@dev25-emea-loreal.demandware.net/s/ysl-au/en_AU/home'
  @browser.goto 'https://dev25-emea-loreal.demandware.net/s/ysl-au/en_AU/home'
end


      #Generate random pass/email
  o = [('a'..'z')].map { |i| i.to_a }.flatten
  @name1 = (0...5).map { o[rand(o.length)] }.join
  @name2 = (0...5).map { o[rand(o.length)] }.join
  @email = (0...5).map { o[rand(o.length)] }.join
  @pass = (0...10).map { o[rand(o.length)] }.join
  @pass1 = (0...10).map { o[rand(o.length)] }.join

  @address_name = (0...5).map { o[rand(o.length)] }.join
end

And(/^close the browser$/) do
  @browser.close
end


And(/^close the newsletter pop-up$/) do
  @browser.element(:class, "dialog_content").wait_until_present.present?
  @browser.element(:class, "ui-dialog-titlebar-close").wait_until_present.click
end
