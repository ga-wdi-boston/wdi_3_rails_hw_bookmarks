class CommentsController < ApplicationController
  # def new
  #   @comment = Comment.new
  # end

  # def index
  #   @bookmark = Bookmark.find(params[:id])
  #   @comments = Comment.order(:created_at :desc)
  # end


  def create
    @comment = Comment.new(comment_params)
    @comment.save
    @comment.created_at = Time.now.strftime('%s').to_i
    redirect_to bookmark_path(params[:comment][:bookmark_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:id, :message, :name, :bookmark_id, :created_at)
  end
end
