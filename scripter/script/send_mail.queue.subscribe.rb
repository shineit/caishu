require 'rubygems'
require 'daemons'
Daemons.run(File.expand_path('../../lib/send_mail.queue.subscribe.rb', __FILE__))