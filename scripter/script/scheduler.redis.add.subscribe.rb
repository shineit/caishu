require 'rubygems'
require 'daemons'
Daemons.run(File.expand_path('../../lib/scheduler.redis.add.subscribe.rb', __FILE__))