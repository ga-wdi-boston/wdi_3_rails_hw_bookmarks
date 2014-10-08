class CommentsController < ApplicationController
  def create
    @bookmark = Bookmark.find(comment_params[:bookmark_id])
    @bookmark.comments.create(comment_params)
    redirect_to @bookmark
  end

  private

    def comment_params
      params.require(:comment).permit(:text, :bookmark_id)
    end

end
