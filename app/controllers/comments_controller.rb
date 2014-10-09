class CommentsController < ApplicationController

  def edit
    @bookmark = Bookmark.find(params[:bookmark_id])
    @comment = @bookmark.comments.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:bookmark_id])
    @comment = @bookmark.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to bookmark_path(@bookmark)
    else
      render 'edit'
    end

  end

  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    @comment = @bookmark.comments.create(comment_params)
    redirect_to bookmark_path(@bookmark)
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    @comment = @bookmark.comments.find(params[:id])
    @comment.destroy
    redirect_to bookmark_path(@bookmark)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
  
end