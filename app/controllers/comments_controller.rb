class CommentsController < ApplicationController


  # def new
  #   @comment = Comment.new(bookmark_id: params[:bookmark_id])
  #   #@bookmark = Bookmark.find(params[:id])
  # end


  def create
    @comment = Comment.new(comment_params)
    # .new creates a plain ruby object but does NOT save that object to the database
    @comment.save
    # we need to manually save the comment to the database
    # separating those two steps is useful so that you can e.g. display confirmation
    # messages to the user
    # binding.pry
    redirect_to bookmark_path(params[:comment][:bookmark_id])
  end

private
  def comment_params
    params.require(:comment).permit(:id, :content, :bookmark_id)
  end

end
