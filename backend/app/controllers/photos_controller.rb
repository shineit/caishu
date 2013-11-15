# -*- encoding: utf-8 -*-
class PhotosController < ApplicationController
	def index
		name = params[:name]
		photo_category_id =  params[:photo_category_id]

		condition_strs = []
		condition_hash = {}

		if name && !name.empty?
			condition_strs << "name like :name"
			condition_hash[:name] = "%#{name}%"
		end

		if photo_category_id && !photo_category_id.empty? && photo_category_id != "0"
			condition_strs << "photo_category_id = :photo_category_id"
			condition_hash[:photo_category_id] = photo_category_id
		end
		@page = params[:page]
		@photos = Photo.where(condition_strs.join(" and "),condition_hash).order("created_at desc").page(params[:page]).per(15)
		photo_category = PhotoCategory.all
		@photo_categories = []
		@photo_categories << ['全部','0']

		photo_category.each do |photo_category|
			arr_tmp = []
			arr_tmp << photo_category.name << photo_category.id
			@photo_categories << arr_tmp
		end
	end

	def new
		photo_category = PhotoCategory.all
		@photo_categories = []

		photo_category.each do |photo_category|
			arr_tmp = []
			arr_tmp << photo_category.name << photo_category.id
			@photo_categories << arr_tmp
		end

		@photo = Photo.new
	end

	def create
		name = params[:photo][:name]
		photo_category_id = params[:photo][:photo_category_id]

		mutiphotos_uploader_file = "/home/server/caishu/mutiphotos_uploader/#{photo_category_id}"
		Dir.mkdir(mutiphotos_uploader_file) unless File.exist?(mutiphotos_uploader_file)

		avatar_file = "/home/server/caishu/static/uploaders/avatar/#{photo_category_id}"
		Dir.mkdir(avatar_file) unless File.exist?(avatar_file)

		origin_file = "/home/server/caishu/static/uploaders/origin/#{photo_category_id}"
		Dir.mkdir(origin_file) unless File.exist?(origin_file)

		web_file = "/home/server/caishu/static/uploaders/web/#{photo_category_id}"
		Dir.mkdir(web_file) unless File.exist?(web_file)

		suffix = params[:photo][:file].original_filename.split(".")[1]
		head_name = params[:photo][:file].original_filename.split(".")[0]
		alias_name = Digest::SHA1.hexdigest(head_name)+"."+ suffix
		url = File.join(Settings.origin_url,photo_category_id.to_s,alias_name)
		path = File.join(Settings.origin_directory,photo_category_id.to_s, alias_name)
		File.open(path, "wb") { |f| f.write(params[:photo][:file].read) }

		Photo.create(name: name, photo_category_id: photo_category_id, alias_name: alias_name, url: url)

		connection = Bunny.new('amqp://guest:guest@127.0.0.1:5672')
		connection.start
		connection.queue('resize_upload_photos',durable: true)
		exchange = connection.exchange('',durable: true)
		content = alias_name + "|" + photo_category_id
		exchange.publish(content,:key => 'resize_upload_photos',:content_type => 'text/plain')
		connection.stop

		redirect_to '/photos'
	end

	def delete
		photo = Photo.find(params[:id])

		origin_file = "/home/server/caishu/static/uploaders/origin/#{photo.photo_category_id}/#{photo.alias_name}"
		File.delete(origin_file) if File.exist?(origin_file)

		avatar_file = "/home/server/caishu/static/uploaders/avatar/#{photo.photo_category_id}/#{photo.alias_name}"
    File.delete(avatar_file) if File.exist?(avatar_file)

    web_file = "/home/server/caishu/static/uploaders/web/#{photo.photo_category_id}/#{photo.alias_name}"
    File.delete(web_file) if File.exist?(web_file)
	    
		photo.destroy
		
		redirect_to "/photos?page=#{params[:page]}photo_category_id=#{params[:photo_category_id]}"
	end

end