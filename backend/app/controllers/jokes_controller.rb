class JokesController < ApplicationController
	require "open-uri"

	def index
		@size= Joke.all.size
		@jokes = Joke.order("id desc").page(params[:page]).per(50)
	end

	def new
		@joke = Joke.new
	end

	def delete
		joke = Joke.find(params[:id])
		joke.destroy

		redirect_to action: :index
	end

	def create
		joke = Joke.create(params[:joke])
		redirect_to action: :index
	end

	def add_from_spider
		connection = Bunny.new('amqp://guest:guest@127.0.0.1:5672')
		connection.start
		connection.queue('add_jokes',durable: true)
		exchange = connection.exchange('',durable: true)
		exchange.publish("add_jokes",:key => 'add_jokes',:content_type => 'text/plain')
		connection.stop

		redirect_to action: :index
	end

	def delete_empty_record
		@delete_count = 0
		jokes = Joke.where(:name => "")
		jokes.each do |joke|
			joke.destroy
			@delete_count += 1
		end
		@delete_count

	end

end