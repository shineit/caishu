#require 'bunny'
require File.expand_path('/home/server/caishu/backend/config/environment', __FILE__)
require 'digest/sha1'

connection = Bunny.new('amqp://guest:guest@127.0.0.1:5672')
connection.start

tmp_dir = "/home/server/caishu/mutiphotos_uploader"
Dir.chdir(tmp_dir)
dir = Dir.open(tmp_dir)

categories = []
dir.each do |e|
	next if !File.directory?(e)
	next if [".",".."].include?(e)
	categories << e
end

categories.each do |photo_category_id|
  tmp_dir = "/home/server/caishu/mutiphotos_uploader/#{photo_category_id}"
  Dir.chdir(tmp_dir)
  dir = Dir.open(tmp_dir)

  dir.each { |e|
    next  if e.eql?(".") || e.eql?("..")
    suffix = e.split(".")[1]
    name = Digest::SHA1.hexdigest(e.to_s)+"."+ suffix
    File.rename(e,name)
  }


  dir.each { |alias_name|
    next  if alias_name.eql?(".") || alias_name.eql?("..")

    url = File.join(Settings.origin_url,photo_category_id, alias_name)
    path = File.join(Settings.origin_directory,photo_category_id, alias_name)
    File.open(path, "wb") { |f| f.write(File.open(alias_name).read) }
    Photo.create(name: "tmp", photo_category_id: photo_category_id, alias_name: alias_name, url: url)
    
    File.delete(alias_name)
    
    connection.queue('resize_upload_photos',durable: true)
    exchange = connection.exchange('',durable: true)

    content = alias_name + "|" + photo_category_id
    exchange.publish(content,:key => 'resize_upload_photos',:content_type => 'text/plain')
    
  }

end
connection.stop
puts "ok"
