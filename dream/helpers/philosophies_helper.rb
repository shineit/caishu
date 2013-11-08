module PhilosophiesHelper
  def get_philosophies

    page = 1
    per_page = 3
    # @philosophies = Philosophy.paginate(:page=>page,:per_page=>per_page)
    @philosophies = Philosophy.order("created_at desc")
  end

end