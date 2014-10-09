class CommentsController < ApplicationController

  def create
    binding.pry
    @comment = Comment.create(comment_params)
    redirect_to @comment.bookmark
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :boommark)
  end
end
