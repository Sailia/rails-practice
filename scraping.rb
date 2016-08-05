require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))
search = doc.search('h2.page-section-title').inner_html
list = doc.css('.components-item').inner_html

puts search
puts list



