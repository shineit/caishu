require 'rubygems'
require 'daemons'
Daemons.run(File.expand_path('../../lib/add_jokes_queue.subscribe.rb', __FILE__))