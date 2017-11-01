require 'nokogiri'
require 'open-uri'
require 'pry'
require 'csv'

url = 'https://wiki.debian.org/DebianReleases'
#url = 'https://ja.wikipedia.org/wiki/Debian'
html = open(url).read
doc = Nokogiri::HTML(html)

# 下の行をコメントアウトすると、pryが起動する
binding.pry


# 例：h2要素のみを抜き出す
#doc.css('h2').each do |node|
#  puts node.text
#end


# 表の抜き出し 2017/10/25
#doc.xpath('//table[@class="wikitable"]').each do |node|
#  puts node.inner_text
#end


# 表の抜き出し 2017/11/01
table = doc.search(:table).first
table.search(:tr).each do |tr|
  print tr.search("td")[0].inner_text.center(25)
  print tr.search("td")[1].inner_text.center(25)
  print tr.search("td")[2].inner_text.center(25)
  puts tr.search("td")[3].inner_text.center(25)
end