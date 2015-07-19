class CommentsController < ApplicationController

  before_action :set_comment, only: [:edit, :update, :create, :destroy]

  def edit
    @comment = @bookmark.comments.find(params[:id])
  end

  def update
    @comment = @bookmark.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to bookmark_path(@bookmark)
    else
      render 'edit'
    end

  end

  def create
    @comment = @bookmark.comments.create(comment_params)
    redirect_to bookmark_path(@bookmark)
  end

  def destroy
    @comment = @bookmark.comments.find(params[:id])
    @comment.destroy
    redirect_to bookmark_path(@bookmark)
  end

  private
    def set_comment
      @bookmark = Bookmark.find(params[:bookmark_id])
    end

    def comment_params
      params.require(:comment).permit(:body)
    end
end