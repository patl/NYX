When(/^user navigates to (.*)$/) do |correctpage|
  @browser.goto correctpage
end

Then(/^he take actual image for the (.*)$/) do |element|
  @actualname = element+"_actual.png"
  @browser.element(:class, element).screenshot('C:\\Users\\ogboi\\OneDrive\\Documents\\GitHub\\NYX\\uitest\\' + @actualname)
  @actual_image = ('C:\\Users\\ogboi\\OneDrive\\Documents\\GitHub\\NYX\\uitest\\' + @actualname)
end

Then(/^compare 2 images expected (.*) with actual$/) do |expectedpath|
    include ChunkyPNG::Color


    images = [
        ChunkyPNG::Image.from_file(expectedpath),
        ChunkyPNG::Image.from_file(@actual_image)
    ]


    diff = []

    images.first.height.times do |y|
      images.first.row(y).each_with_index do |pixel, x|
        diff << [x,y] unless pixel == images.last[x,y]
      end
    end

    puts "pixels (total):     #{images.first.pixels.length}"
    puts "pixels changed:     #{diff.length}"
    puts "pixels changed (%): #{(diff.length.to_f / images.first.pixels.length) * 100}%"

    x, y = diff.map{ |xy| xy[0] }, diff.map{ |xy| xy[1] }

    images.last.rect(x.min, y.min, x.max, y.max, ChunkyPNG::Color.rgb(0,255,0))
    images.last.save('diff.png')

end


