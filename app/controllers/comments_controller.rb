class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    redirect_to @comment.bookmark

  end

  def new
    # @comment = Comment.find(params[:id])
  end


  private
  def comment_params
    params.require(:comment).permit(:comment, :bookmark_id)
  end


end


# Delete a comment -- delect
# Edit a comment on another page -- edit
# View a specific singular comment -- show
