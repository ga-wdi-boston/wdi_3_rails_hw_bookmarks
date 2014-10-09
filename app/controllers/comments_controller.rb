class CommentsController < ApplicationController
  def create
    @song = Song.create(song_params)
    redirect_to @comment.bookmark
  end

  private
  def song_params
    params.require(:comment).permit(:body, :bookmark_id)
  end
end
