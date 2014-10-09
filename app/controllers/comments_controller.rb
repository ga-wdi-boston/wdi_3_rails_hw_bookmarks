class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def show
    binding.pry
  end

  def create
    binding.pry
    @comment = Comment.create(comment_params)
    redirect_to @comment.bookmark
  end

  def edit
  end

  def new
    binding.pry
    @comment = Comment.create(comment_params)
  end

  def update
    @comment.update(comment_params)
    redirect_to @comment.bookmark
  end

  def destroy
    @comment.destroy
    redirect_to @bookmark
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :created_at, :bookmark_id)
  end
end
