class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    redirect_to @comment.bookmark#bookmarks_path(Bookmark.comment#@comment.bookmark

  end

  def new
    # @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end


  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to @comment.bookmark
  end

  def destroy
    # binding.pry
    @comment = Comment.find(params[:id])
    # @comment.destroy
    # binding.pry
    @comment.destroy #(comment_params)
    # binding.pry
    redirect_to @comment.bookmark #bookmarks_path(Bookmark.find(@comment.bookmark_id))
    #respond_to @comment.bookmark
  end



  private

  def find_comment
    @comment = Bookmark.comment.find(Bookmark.comment)#Comment.find(params[:id])
  end



  def comment_params
    params.require(:comment).permit(:comment, :bookmark_id)
  end


end


# Delete a comment -- delect
# Edit a comment on another page -- edit
# View a specific singular comment -- show
