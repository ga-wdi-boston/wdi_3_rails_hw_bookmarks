class CommentsController < ApplicationController
  def index
    @comments = Comment.order(:created_at)
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    redirect_to @comment.bookmark
  end

  private
  def comment_params
    params.require(:bookmark).permit(:message, :bookmark_id)
  end

end
