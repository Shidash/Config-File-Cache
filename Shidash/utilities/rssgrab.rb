require 'open-uri'
require 'nokogiri'

puts "RSS Feed URL: "
url = gets
xml = Nokogiri::XML(open(url))
xml.xpath("//enclosure").each do |e|
  `wget #{e["url"]}`
end
