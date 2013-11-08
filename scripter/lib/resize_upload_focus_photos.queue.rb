require "amqp"
require 'digest/sha1'
require "thread"
require 'active_record'
require 'mini_magick'
require 'mime-types'

core_root = File.open(File.expand_path('../../core.root', __FILE__), &:readline).delete("\n").gsub("\\", '/')
require File.join(core_root, 'config/initializers')
Dir[ File.join(core_root, 'app/models/*.rb') ].each{|file| require file }

m = Mutex.new
AMQP.start('amqp://guest:guest@127.0.0.1:5672') do |connection|
	queue_name = 'resize_focus_photos'
	channel = AMQP::Channel.new(connection)
	channel.queue(queue_name,durable: true) do |queue|
		queue.subscribe do |content|
				m.synchronize {

				# focus
				path = File.join(Settings.origin_directory,content.split("|")[1], content.split("|")[0])
				image = MiniMagick::Image.open(path)
				image.resize "238"
				width,height = image[:width],image[:height]
				if height >= 270
					shaved_off = ((height-270)/2).round
					image.shave "0x#{shaved_off}"
				else
					image = MiniMagick::Image.open(path)
				 	image.resize "x270"
				 	width,height = image[:width],image[:height]
				  	shaved_off = ((width-238)/2).round
				  	image.shave "#{shaved_off}x0"
				end
				image.format image[:format]
				focus = File.join(Settings.focus_directory,content.split("|")[1])
				Dir.chdir focus
				image.write content.split("|")[0]

				# avatar
				path = File.join(Settings.origin_directory,content.split("|")[1], content.split("|")[0])
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
				avatar = File.join(Settings.avatar_directory,content.split("|")[1])
				Dir.chdir avatar
				image.write content.split("|")[0]
				
				puts "ok"
			}
		end
	end
	puts "ok"
end