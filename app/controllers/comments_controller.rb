class CommentsController < ApplicationController
  def new
    @comment = Bookmark.create(comment_params)
    redirect_to @comment.bookmark
  end

  private
  def comment_params
    params.require(:bookmark).permit(:message, :bookmark_id)
  end

end
