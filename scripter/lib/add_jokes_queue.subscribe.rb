require "open-uri"
require 'nokogiri'
require "amqp"
require 'digest/sha1'
require "thread"
require 'active_record'
require 'mini_magick'
require 'mime-types'
require 'redis'

core_root = File.open(File.expand_path('../../core.root', __FILE__), &:readline).delete("\n").gsub("\\", '/')
require File.join(core_root, 'config/initializers')
Dir[ File.join(core_root, 'app/models/*.rb') ].each{|file| require file }

ActiveRecord::Base.default_timezone = :local
ActiveRecord::Base.establish_connection(Settings.web)


m = Mutex.new
AMQP.start('amqp://guest:guest@127.0.0.1:5672') do |connection|
  puts queue_name = 'add_jokes'
  channel = AMQP::Channel.new(connection)
  channel.queue(queue_name,durable: true) do |queue|
    queue.subscribe do |content|
      m.synchronize {
        size = Joke.all.size == 0 ? 1 : Joke.last.id.to_i+1
        size_end = size+500
        (size..size_end).each do |i|
          url = "http://xiaohua.zol.com.cn/detail3/"+i.to_s+".html"
          doc = Nokogiri::HTML(open(url))
          title = doc.css(".article-title").inner_text
          content = doc.css(".article-text").inner_text.strip
          Joke.create(:name => title, :content => content)
        end
        puts "ok"
      }
    end
  end
  puts "ok"
end