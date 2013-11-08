class PhotoCategoriesController < ApplicationController

  def index
    @photo_categories = PhotoCategory.all
  end

  def new
    @photo_category = PhotoCategory.new
  end

  def create
    photo_category = PhotoCategory.create(params[:photo_category])
    Dir.mkdir("/home/server/caishu/mutiphotos_uploader/#{photo_category.id}")
    Dir.mkdir("/home/server/caishu/static/uploaders/avatar/#{photo_category.id}")
    Dir.mkdir("/home/server/caishu/static/uploaders/origin/#{photo_category.id}")
    Dir.mkdir("/home/server/caishu/static/uploaders/web/#{photo_category.id}")
    redirect_to '/photo_categories'
  end

  def edit
    @photo_category = PhotoCategory.find(params[:id])
  end

  def delete
    photo_category = PhotoCategory.find(params[:id])

    mutiphotos_uploader_file = "/home/server/caishu/mutiphotos_uploader/#{photo_category.id}"
    Dir.rmdir(mutiphotos_uploader_file) if File.exist?(mutiphotos_uploader_file)

    avatar_file = "/home/server/caishu/static/uploaders/avatar/#{photo_category.id}"
    Dir.rmdir(avatar_file) if File.exist?(avatar_file)

    origin_file = "/home/server/caishu/static/uploaders/origin/#{photo_category.id}"
    Dir.rmdir(origin_file) if File.exist?(origin_file)

    web_file = "/home/server/caishu/static/uploaders/web/#{photo_category.id}"
    Dir.rmdir(web_file) if File.exist?(web_file)

    photo_category.destroy
    redirect_to '/photo_categories'
  end

  def update
    @photo_category = PhotoCategory.find(params[:id])
    @photo_category.update_attributes(params[:photo_category])
    redirect_to '/photo_categories'
  end

end