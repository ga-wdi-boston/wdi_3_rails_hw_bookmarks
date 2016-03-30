module ApplicationHelper
  def favorited
    if @bookmark.is_favorite
      print "Favorite"
    end
  end

  def commented
    if @bookmark.comment
      print "Comment"
    end
  end
end
