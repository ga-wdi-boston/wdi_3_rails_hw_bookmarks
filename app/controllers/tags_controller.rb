class TagsController < ApplicationController

  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    @tag = @bookmark.tags.create(tag_params)
    redirect_to bookmark_path(@bookmark)
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    @tag = @bookmark.tags.find(params[:id])
    redirect_to bookmark_path(@bookmark)
  end

  private
  def tag_params
    params.require(:tag).permit(:tag_text)
  end

end