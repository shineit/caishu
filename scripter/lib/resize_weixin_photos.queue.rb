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

m = Mutex.new
AMQP.start('amqp://guest:guest@127.0.0.1:5672') do |connection|
	queue_name = 'resize_weixin_photos'
	channel = AMQP::Channel.new(connection)
	channel.queue(queue_name,durable: true) do |queue|
		queue.subscribe do |content|
			m.synchronize {

				# avatar
				path = File.join(Settings.weixin_directory,content)
				image = MiniMagick::Image.open(path)
				width,height = image[:width],image[:height]
				if width>height
				  shaved_off = ((width-height)/2).round
				  image.shave "#{shaved_off}x0"
				else
				  shaved_off = ((height-width)/2).round
				  image.shave "0x#{shaved_off}"
				end
				image.resize "80"
				image.format image[:format]
				avatar = File.join(Settings.weixin_directory)
				Dir.chdir avatar
				image.write content

			}
		end
	end
	puts "ok"
end