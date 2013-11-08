    # @len = 0
    # size = Joke.all.size == 0 ? 1 : Joke.last.id.to_i+1
    require 'nokogiri'
    require "open-uri"
    (280..300).each do |i|
      url = "http://xiaohua.zol.com.cn/detail3/"+i.to_s+".html" 
      # url = "http://www.baidu.com/"
      doc = Nokogiri::HTML(open(url))
      title = doc.css(".article-title").inner_text
      puts content = doc.css(".article-text").inner_text.strip
      # Joke.create(:name => title, :content => content)
      # @len += 1
    end
