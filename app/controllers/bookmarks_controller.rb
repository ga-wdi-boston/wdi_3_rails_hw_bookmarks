class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(allowed_params)
    @bookmark.save
    redirect_to action: :index
  end

  def show

  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_path
  end

  def allowed_params
    params.require(:bookmark).permit(:url, :title, :description, :category, :checkbox)
  end

end


