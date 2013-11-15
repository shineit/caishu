require 'bundler'
Bundler.require

core_root = File.open(File.expand_path('../core.root', __FILE__), &:readline).delete("\n").gsub("\\", '/')
require File.join(core_root, 'config/initializers')

Dir[ File.join(core_root, 'app/models/*.rb') ].each{|file| require file }
Dir[ File.join(core_root, 'app/helpers/*.rb') ].each{|file| require file }

require File.expand_path('../establish_connection', __FILE__)
Dir[ File.expand_path('../helpers/*.rb', __FILE__) ].each{|file| require file }
# require 'puma'
# configure { 
#   set :server, :puma 
# }

# configure :development do
#   require 'sinatra/reloader'
#   Dir[ File.expand_path('../helpers/*.rb', __FILE__) ].each{|file| require file }
# end

include WapHelper
include AuthHelper
include MessageHelper
include CoreHelper

get '/weixin/access' do
	puts "auth"
  get_weixin_access
end

post '/weixin/access' do
	puts "messages"
  post_weixin_access
end

get '/weixin/show' do
	puts "goto_wap"
  get_weixin_show
end