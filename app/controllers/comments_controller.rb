class CommentsController < ApplicationController
  # def new
  #   @comment = Comment.new
  # end

  def create
    @comment = Comment.create(comment_params)
    redirect_to bookmark_path(params[:comment][:bookmark_id])
  end

  private
  def comment_params
    params.require(:comments).permit(:id, :message, :name, :bookmark_id)
  end

end
