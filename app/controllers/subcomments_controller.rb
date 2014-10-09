class SubcommentController < ApplicationController

  def create
    @comment = Comment.find(params[:comment_id])
    @subcomment = @comment.subcomments.create(subcomment_params)
    redirect_to bookmark_path(@bookmark)
  end

  def destroy
  end

  private 
  def subcomment_params
    params.require(:subcomment).permit(:text)
  end
end