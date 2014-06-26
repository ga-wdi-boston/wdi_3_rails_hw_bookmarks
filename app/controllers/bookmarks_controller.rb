class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all.order(:title)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

end
