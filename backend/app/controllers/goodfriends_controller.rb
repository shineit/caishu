class GoodfriendsController < ApplicationController
	def index
		@goodfriends = Goodfriend.order("created_at desc")
	end

	def new
		@goodfriend = Goodfriend.new
	end

	def create
		puts params

		qq = params[:goodfriend][:qq]
		qq_name = params[:goodfriend][:qq_name]
		weixin = params[:goodfriend][:weixin]
		weixin_name = params[:goodfriend][:weixin_name]
		gender = params[:goodfriend][:gender]
		age = params[:goodfriend][:age]
		truth_name = params[:goodfriend][:truth_name]
		telephone = params[:goodfriend][:telephone]
		file = params[:goodfriend][:file]

		avatar_file = "/home/server/caishu/static/uploaders/weixin"
		Dir.mkdir(avatar_file) unless File.exist?(avatar_file)

		if file
			suffix = file.original_filename.split(".")[1]
			head_name = file.original_filename.split(".")[0]
			alias_name = Digest::SHA1.hexdigest(head_name)+"."+ suffix
			url = File.join(Settings.weixin_url, alias_name)
			path = File.join(Settings.weixin_directory, alias_name)
			File.open(path, "wb") { |f| f.write(file.read) }

			connection = Bunny.new('amqp://guest:guest@127.0.0.1:5672')
			connection.start
			connection.queue('resize_weixin_photos',durable: true)
			exchange = connection.exchange('',durable: true)
			content = alias_name
			exchange.publish(content,:key => 'resize_weixin_photos',:content_type => 'text/plain')
			connection.stop
		end

		Goodfriend.create(
			qq: qq, 
			qq_name: qq_name, 
			weixin: weixin, 
			weixin_name: weixin_name,
			gender: gender, 
			age: age, 
			truth_name: truth_name, 
			weixin_name: weixin_name,
			qq: qq, 
			photo: url || "",
			telephone: telephone
		)

	  redirect_to '/goodfriends'
	end

	def edit
		@goodfriend = Goodfriend.find(params[:id])
	end

	def delete
		goodfriend = Goodfriend.find(params[:id])
		gp = goodfriend.photo.split("weixin")[1]
		origin_file = "/home/server/caishu/static/uploaders/weixin/#{gp}"
		File.delete(origin_file) if File.exist?(origin_file)

		goodfriend.destroy
		redirect_to '/goodfriends'
	end

	def update
		@goodfriend = Goodfriend.find(params[:id])
		@goodfriend.update_attributes(params[:goodfriend])
		redirect_to '/goodfriends'
	end

end