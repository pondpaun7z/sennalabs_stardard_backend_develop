require 'rubygems'
require 'nokogiri'
require 'open-uri'

base_url = 'https://www.bnk48.com/'
url = 'https://www.bnk48.com/index.php?page=members'

doc = Nokogiri::HTML(open(url))
doc.css('.boxMemx').each do |member|
  endpoint_image = member.css('.ImgMem').first.attr('style').match(/url\((.*)\);/)[1]
  image_url = "#{base_url}#{endpoint_image}"

  member_name = member.css('.nameMem').first.content.strip

  open(image_url) do |image|
    File.open("./bnk_members/#{member_name}.jpg", 'wb') do |file|
      file.write(image.read)
    end
  end
end
