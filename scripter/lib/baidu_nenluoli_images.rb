# 爬百度嫩萝莉

require "open-uri"
require 'nokogiri'
require "amqp"
require 'bunny'
require 'digest/sha1'
require "thread"
require 'active_record'
require 'json'

core_root = File.open(File.expand_path('../../core.root', __FILE__), &:readline).delete("\n").gsub("\\", '/')
require File.join(core_root, 'config/initializers')
Dir[ File.join(core_root, 'app/models/*.rb') ].each{|file| require file }

ActiveRecord::Base.default_timezone = :local
ActiveRecord::Base.establish_connection(Settings.web)

str = 'http://image.baidu.com/channel/listjson?fr=channel&tag1=%E7%BE%8E%E5%A5%B3&tag2=%E5%AB%A9%E8%90%9D%E8%8E%89&sorttype=0&pn=90&rn=1000&ie=utf8&oe=utf-8&1383325558822'
url = str
doc = Nokogiri::HTML(open(url))
title = doc.css("body").inner_text
titlej = JSON.parse(title)["data"]

arr = []
titlej.each do |ttt|
  arr << ttt["download_url"]
end

connection = Bunny.new('amqp://guest:guest@127.0.0.1:5672')
connection.start
arr.delete_at(-1)
arr.each_with_index do |aaaaaa,index|
  name = 'nll'
  photo_category_id = 13
  suffix = 'jpg'
  head_name = aaaaaa.split("sign=")[1]
  alias_name = Digest::SHA1.hexdigest(head_name)+"."+ suffix
  url = File.join(Settings.origin_url, photo_category_id.to_s, alias_name)
  path = File.join(Settings.origin_directory, photo_category_id.to_s, alias_name)
  File.open(path, "wb") { |f| f.write(URI.parse(aaaaaa).read) }
  Photo.create(name: name, photo_category_id: photo_category_id, alias_name: alias_name, url: url)
  connection.queue('resize_upload_photos',durable: true)
  exchange = connection.exchange('',durable: true)
  content = alias_name + "|" + photo_category_id.to_s
  exchange.publish(content,:key => 'resize_upload_photos',:content_type => 'text/plain')
  puts "ok"
end
connection.stop