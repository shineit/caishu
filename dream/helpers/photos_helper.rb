module PhotosHelper
  def get_photos
  	photo_categories = PhotoCategory.all
    @results = []
    photo_categories.each do |photo_category|
      category_and_photos = []
      photos = Photo.where(:photo_category_id => photo_category.id).limit(15) 
      if photos.blank?

      else
        category_and_photos << photo_category.name << photos
        @results << category_and_photos
      end
    end

    @focus = []
    arr1 = []
    focus = Focus.order("created_at").limit(16)
    if focus
      focus.each_with_index do |ss,i|
        arr1 << ss
        if (i+1)%4 == 0
          @focus << arr1
          arr1 = []
        end
      end

    else
      @focus << []
    end
  end

  def get_photos_list
    page = params[:page] || 1
    per_page = params[:per_page] || 30
    photo_category_id = params[:photo_category_id]
    type = params[:type] || "new"
    if type == "new"
      @photos_list = Photo.where(:photo_category_id => photo_category_id).order("created_at desc").paginate(:page => page,:per_page => per_page)
    elsif type == "hot"
      @photos_list = Photo.joins(:photo_detail).where(:photo_category_id => photo_category_id).order("click_times desc").paginate(:page => page,:per_page => per_page)
    end
    size = Photo.where(:photo_category_id => photo_category_id).size
    a= size / per_page
    b= size%per_page == 0 ? 0 : 1
    @photo_category_id = photo_category_id
    @maxpage = a+b
    @photo_categories = PhotoCategory.all
  end

  def get_photos_list_more
    page = params[:page] || 1
    per_page = params[:per_page] || 10
    photo_category_id = params[:photo_category_id].to_i
    type = params[:type] || "new"
    if type == "new"
      photos_list = Photo.where(:photo_category_id => photo_category_id).order("created_at desc").paginate(:page => page,:per_page => per_page)
    elsif type == "hot"
      photos_list = Photo.joins(:photo_detail).where(:photo_category_id => photo_category_id).order("click_times desc").paginate(:page => page,:per_page => per_page)
    end
    
    html = ""
    photos_list.each do |list|
      times = !list.photo_detail.nil? ? list.photo_detail.click_times : 0
      img = picture_url(list.alias_name,"web",list.photo_category_id.to_s)
      href = picture_url(list.alias_name,"origin",list.photo_category_id.to_s)
      html1 = '
      <li>
        <a href="'+href+'" photoid="'+list.id.to_s+'">
          <img src="'+img+'" class="time" width="220" onmouseover="setover(this)" onmouseout="setout(this)">
        </a>
        <p>'+times.to_s+'</p>
      </li>'
      html << html1
    end
    return html
  end

  def photo_click_times
    photo_detail = PhotoDetail.where(:photo_id => Photo.find(params[:photo_id]).id).first
    if photo_detail.nil?
      PhotoDetail.create(:photo_id => params[:photo_id], :click_times => 1, :download_times => 0)
    else
      photo_detail.click_times = photo_detail.click_times.to_i + 1
      photo_detail.save
    end
  end


end