class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    redirect_to @comment.bookmark
  end

  private
  def comment_params
    params.require(:bookmark).permit(:message, :bookmark_id, :created_at, :updated_at)
  end

end
