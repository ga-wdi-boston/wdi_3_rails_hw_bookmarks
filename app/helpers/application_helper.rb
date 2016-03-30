module ApplicationHelper
  def commented
    if bookmark.comment
      "You have a comment"
    # else
    #   "No comments, be the first one"
    end
end
