require 'amqp'
require 'redis'
require File.expand_path('../../config/environment', __FILE__)
AMQP.start('amqp://guest:guest@127.0.0.1:5672') do |connection|
	queue_name = 'email'
	channel = AMQP::Channel.new(connection)
	channel.queue(queue_name,durable: true) do |queue|
		queue.subscribe do |email|
			puts email
			UserMailer.register(email).deliver
		end
	end
end