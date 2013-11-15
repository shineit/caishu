


# 爬百度杨幂

require "open-uri"
require 'nokogiri'
require "amqp"
require 'bunny'
require 'digest/sha1'
require "thread"
require 'active_record'
require 'json'
require 'redis'

core_root = File.open(File.expand_path('../../core.root', __FILE__), &:readline).delete("\n").gsub("\\", '/')
require File.join(core_root, 'config/initializers')
Dir[ File.join(core_root, 'app/models/*.rb') ].each{|file| require file }

ActiveRecord::Base.default_timezone = :local
ActiveRecord::Base.establish_connection(Settings.web)

str = 'http://image.baidu.com/i?tn=resultjsonavstar&ie=utf-8&word=%E6%9D%A8%E5%B9%82&pn=10&rn=160&z=&width=&height='
url = str
doc = Nokogiri::HTML(open(url))
title = doc.css("body").inner_text
titlej = JSON.parse(title)["imgs"]

arr = []
titlej.each do |ttt|
  arr << ttt["objURL"]
end

connection = Bunny.new('amqp://guest:guest@127.0.0.1:5672')
connection.start
arr.delete_at(-1)
arr.each_with_index do |aaaaaa,index|
  name = 'ym'
  photo_category_id = 18
  suffix = 'jpg'
  head_name = aaaaaa
  alias_name = Digest::SHA1.hexdigest(head_name)+"."+ suffix
  url = File.join(Settings.origin_url, photo_category_id.to_s, alias_name)
  path = File.join(Settings.origin_directory, photo_category_id.to_s, alias_name)

  begin
  	File.open(path, "wb") { |f| f.write(URI.parse(aaaaaa).read) }

	  Photo.create(name: name, photo_category_id: photo_category_id, alias_name: alias_name, url: url)
	  connection.queue('resize_upload_photos',durable: true)
	  exchange = connection.exchange('',durable: true)
	  content = alias_name + "|" + photo_category_id.to_s
	  exchange.publish(content,:key => 'resize_upload_photos',:content_type => 'text/plain')
  rescue Exception => e
  	puts 'no find'
  end
  
  puts "ok"
end
connection.stop