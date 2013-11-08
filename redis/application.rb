require 'bundler'
Bundler.require

core_root = File.open(File.expand_path('../core.root', __FILE__), &:readline).delete("\n").gsub("\\", '/')
require File.join(core_root, 'config/initializers')

Dir[ File.join(core_root, 'app/models/*.rb') ].each{|file| require file }
Dir[ File.join(core_root, 'app/helpers/*.rb') ].each{|file| require file }

require File.expand_path('../establish_connection', __FILE__)

configure :development do
  require 'sinatra/reloader'
end

include CoreHelper

get '/' do 
  @photo_categories = PhotoCategory.all
  page = params[:page] || 1
  per_page = 10
  size = Photo.all.size
  photo_category_id = params[:photo_category_id]
  if photo_category_id.nil? || photo_category_id == "all"
    @photos = Photo.order("created_at desc").paginate(:page => page,:per_page => per_page)
    # size = @photos.size
  else
    @photos = Photo.where(:photo_category_id =>photo_category_id).paginate(:page => page,:per_page => per_page)
    size = Photo.where(:photo_category_id =>photo_category_id).size
  end

  a= size/per_page
  b= size%per_page == 0 ? 0 : 1

  @maxpage = a+b
  puts @maxpage
  @photo_category_id = photo_category_id || "all"

  erb :'photos/index'
end

get '/get_more_photos' do 
  page = params[:page] || 1
  per_page = 10
  photo_category_id = params[:photo_category_id]
  photos = ""

  if photo_category_id.nil? || photo_category_id == "all"
    photos = Photo.order("created_at desc").paginate(:page => page,:per_page => per_page)
  else
    photos = Photo.where(:photo_category_id =>photo_category_id).paginate(:page => page,:per_page => per_page)
  end

  html = ""
  photos.each do |photo|
    img = picture_url(photo.alias_name,"wap")
    html1 = '<div class="listphoto"><a href="/photos/'+photo.id.to_s+'"><img src="'+img+'" alt="" width="260px"></a></div>'
    html << html1
  end
  
  return html
end

get '/photos/:id' do
  @photo = Photo.find(params[:id])
  erb :'photos/show'
end