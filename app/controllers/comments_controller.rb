class CommentsController < ApplicationController

  def create
    @comment = Comment.new(allowed_params)
    @comment.save
    redirect_to :back
  end

  private

  def allowed_params
    params.require(:comment).permit(:body, :bookmark_id, :user_id)
  end

end
