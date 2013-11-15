require 'bundler'
Bundler.require

core_root = File.open(File.expand_path('../core.root', __FILE__), &:readline).delete("\n").gsub("\\", '/')
require File.join(core_root, 'config/initializers')
Dir[ File.join(core_root, 'app/models/*.rb') ].each{|file| require file }
Dir[ File.join(core_root, 'app/helpers/*.rb') ].each{|file| require file }
require File.expand_path('../establish_connection', __FILE__)
Dir[ File.expand_path('../helpers/*.rb', __FILE__) ].each{|file| require file }

configure :development do
  require 'sinatra/reloader'
  Dir[ File.expand_path('../helpers/*.rb', __FILE__) ].each{|file| also_reload file}
end

include CoreHelper
include PhotosHelper
include MoodsHelper
include NotesHelper
include EssaysHelper
include PhilosophiesHelper
include JokesHelper
include SuggestionsHelper

# require 'sinatra/form_helpers'

# require "rack/cache"
# use Rack::Cache

get '/' do 
  REDIS.incr("come_times_web")
  REDIS.sadd("ips_web",request.ip)
  REDIS.sadd("user_agent_web",request.user_agent)
  # cache_control :public, :max_age => 36000

  erb :'main/index'
end

get '/photos' do 
  get_photos
  erb :'photos/index'
end

get '/photos/list' do 
  # cache_control :public, :max_age => 36000
  get_photos_list
  erb :'photos/list'
end

get '/photos/list/get_list_more' do 
  get_photos_list_more
end

get '/photos/click_times' do 
  photo_click_times
end

get '/moods' do
  get_moods
  erb :'moods/index'
end

get '/moods/:id' do
  get_mood_show
  erb :'moods/show'
end

get '/notes' do
  get_notes
  erb :'notes/index'
end

get '/notes/:id' do
  get_note_show
  erb :'notes/show'
end

get '/essays' do
  get_essays
  erb :'essays/index'
end

get '/essays/:id' do
  get_essay_show
  erb :'essays/show'
end

get '/philosophies' do
  get_philosophies
  erb :'philosophies/index'
end

get '/jokes' do
  get_jokes
  erb :'jokes/index'
end

get '/jokes/get_jokes_more' do
  get_jokes_more
end

get '/suggestions' do 
  get_suggestions
  erb :'suggestions/index'
end

post '/suggestions' do 
  post_suggestions
  redirect to ('/suggestions')
end

get '/me' do
  # get_me
  erb :'me/index'
end