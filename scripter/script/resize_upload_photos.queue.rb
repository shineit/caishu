require 'rubygems'
require 'daemons'
Daemons.run(File.expand_path('../../lib/resize_upload_photos.queue.rb', __FILE__))