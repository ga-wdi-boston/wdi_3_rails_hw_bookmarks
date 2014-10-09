class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def show
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to @comment.bookmark
  end

  def edit
  end

  def new
    @comment = Comment.new
  end

  def update
    @comment.update(comment_params)
    redirect_to @comment.bookmark
  end

  def destroy
    bookmark = @comment.bookmark
    @comment.destroy
    redirect_to bookmark
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :created_at, :boommark)
  end
end
