module JokesHelper
  def get_jokes
    per_page = 20
    page = 1
    @jokes = Joke.order("created_at desc").paginate(:page => page,:per_page => per_page)
    jokes = Joke.all
    size = jokes.size
    a= size / per_page
    b= size%per_page == 0 ? 0 : 1
    @maxpage = a+b
  end

  def get_jokes_more
    page = params[:page]
    per_page = 20

    jokes = Joke.order("created_at desc").paginate(:page => page,:per_page => per_page)
    
    result = []
    jokes.each do |joke|
    html = '<h4 class="list-group-item-heading list-group-item">
        <br>
        '+joke.id.to_s+'.
        '+joke.content+'
        <br><br>
      </h4>
      <br>'
      result << html
    end

    return result
  end
end