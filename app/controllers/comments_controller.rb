class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    redirect_to @bookmark

  end

  private
  def song_params
    params.require(:comment).permit(:comment)
  end


end
