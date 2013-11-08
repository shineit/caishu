class FocusController < ApplicationController
	require 'digest/sha1'
	def index
		@focus = Focus.order("created_at").limit(16)
	end

	def edit
		@focus = Focus.find(params[:id])
		photo_category = PhotoCategory.all
		@photo_categories = []

		photo_category.each do |photo_category|
			arr_tmp = []
			arr_tmp << photo_category.name << photo_category.id
			@photo_categories << arr_tmp
		end
		
	end

	def update
		focus = Focus.find(params[:id])

		file = params[:focus][:file]
		photo_category_id = params[:focus][:photo_category_id]
		head_name = file.original_filename.split(".")[0]
		suffix = file.original_filename.split(".")[1]
		alias_name = Digest::SHA1.hexdigest(head_name)+"."+ suffix
		url = File.join(Settings.origin_url, photo_category_id.to_s, alias_name)
		path = File.join(Settings.origin_directory, photo_category_id.to_s, alias_name)
		File.open(path, "wb") { |f| f.write(file.read) }

		connection = Bunny.new('amqp://guest:guest@127.0.0.1:5672')
		connection.start
		connection.queue('resize_focus_photos',durable: true)
		exchange = connection.exchange('',durable: true)

		content = alias_name + "|" + photo_category_id
		exchange.publish(content,:key => 'resize_focus_photos',:content_type => 'text/plain')
		connection.stop

		focus.name = params[:focus][:name]
		focus.photo_category_id = photo_category_id
		focus.alias_name = alias_name
		focus.url = url

		focus.save
		redirect_to '/focus'
	end

	def delete
		focus = Focus.find(params[:id])
		origin_file = "/home/server/caishu/static/uploaders/origin/#{focus.photo_category_id}/#{focus.alias_name}"
		File.delete(origin_file) if File.exist?(origin_file)

		avatar_file = "/home/server/caishu/static/uploaders/avatar/#{focus.photo_category_id}/#{focus.alias_name}"
    File.delete(avatar_file) if File.exist?(avatar_file)

    focus_file = "/home/server/caishu/static/uploaders/focus/#{focus.photo_category_id}/#{focus.alias_name}"
		File.delete(focus_file) if File.exist?(focus_file)

		focus.destroy
		redirect_to '/focus'
	end

	def new
		photo_category = PhotoCategory.all

		@photo_categories = []

		photo_category.each do |photo_category|
			arr_tmp = []
			arr_tmp << photo_category.name << photo_category.id
			@photo_categories << arr_tmp
		end

		@focus = Focus.new

	end

	def create
		name = params[:focus][:name]
		photo_category_id = params[:focus][:photo_category_id]
		file = params[:focus][:file]
		head_name = file.original_filename.split(".")[0]
		suffix = file.original_filename.split(".")[1]
		alias_name = Digest::SHA1.hexdigest(head_name)+"."+ suffix
		url = File.join(Settings.origin_url, photo_category_id.to_s, alias_name)
		path = File.join(Settings.origin_directory, photo_category_id.to_s, alias_name)
		File.open(path, "wb") { |f| f.write(file.read) }

		connection = Bunny.new('amqp://guest:guest@127.0.0.1:5672')
		connection.start
		connection.queue('resize_focus_photos',durable: true)
		exchange = connection.exchange('',durable: true)

		content = alias_name + "|" + photo_category_id
		exchange.publish(content,:key => 'resize_focus_photos',:content_type => 'text/plain')
		connection.stop

		Focus.create(name: name, photo_category_id: photo_category_id, alias_name: alias_name, url: url)

		file = "/home/server/caishu/static/uploaders/focus/#{photo_category_id}"
		Dir.mkdir(file) unless File.exist?(file) 

		redirect_to '/focus'
	end
end