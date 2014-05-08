
class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all

  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    bookmark = Bookmark.create(bookmark_params)
    redirect_to bookmark
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :comment, :category, :is_favorite)
  end

end
