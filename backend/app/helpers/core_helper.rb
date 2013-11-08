# module CoreHelper2
# 	def picture_url(name,picture_type)
# 	  if name.nil? or name.empty? or name=="null"
# 	    case picture_type

# 	    when 'weixin'

# 	    when 'avatar'

# 	    when 'origin'

# 	    when 'wap'

# 	    end
# 	    return default_url = File.join(Settings.avatar_url, avatar)
# 	  else
# 	    case picture_type

# 	    when 'weixin'
# 	      return File.join(Settings.weixin_url,name)
# 	    when 'avatar'
# 	      return File.join(Settings.avatar_url,name)
# 	    when 'origin'
# 	      return File.join(Settings.origin_url,name)
# 	    when 'wap'
# 	      return File.join(Settings.wap_url,name)
# 	    end
# 	  end
# 	end

# 	def cut_content(content)
#     result = ""
#     if content.nil? || content == ""
#     else
#       if content.size > 30
#         result = content[0, 27] << "..."
#       else
#         result = content
#       end
#     end

#     result
#   end
# end