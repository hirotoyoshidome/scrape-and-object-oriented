#! C:\Ruby25-x64\bin\ruby.exe
#! utf-8


require 'nokogiri'
require 'open-uri'

url = 'https://www.asahi.com/worldcup/2018/team/'

charset = nil

html = open(url) do |h|
	charset = h.charset
	h.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

doc.xpath('//*[@id="ListStanding"]/ul[1]').each do |node|
	puts node.css('a')
	puts node.css('span').inner_text.gsub(/(\r\n|\r|\n)/, '')

end

puts "please press your keyboard at Number"
a = gets.to_i
puts a
