module CoreHelper
	def picture_url(name,picture_type,photo_category_id)
    case picture_type
    when 'avatar'
      return File.join(Settings.avatar_url,photo_category_id,name)
    when 'origin'
      return File.join(Settings.origin_url,photo_category_id,name)
    when 'web'
      return File.join(Settings.web_url,photo_category_id,name)
    when 'focus'
      return File.join(Settings.focus_url,photo_category_id,name)
    end
	end

	def partial(template, *args)
    template_array = template.to_s.split('/')
    template = template_array[0..-2].join('/') + "/_#{template_array[-1]}"
    options = args.last.is_a?(Hash) ? args.pop : {}
    options.merge!(:layout => false)
    if collection = options.delete(:collection) then
      collection.inject([]) do |buffer, member|
        buffer << erb(:"#{template}", options.merge(:layout =>
        false, :locals => {template_array[-1].to_sym => member}))
      end.join("\n")
    else
      erb(:"#{template}", options)
    end
  end

  def cut_content(content)
    result = ""
    if content.nil? || content == ""
    else
      if content.size > 34
        result = content[0, 30] << "..."
      else
        result = content
      end
    end

    result
	end

  def gender_analyse(gender)
    result = gender == 1 ? '男' : '女'
  end

  def encrypt_4(telephpone)
    if telephpone
      return telephpone[0,3].to_s+'****'+telephpone[7,11].to_s
    else
      return "我也未知"
    end
  end
end