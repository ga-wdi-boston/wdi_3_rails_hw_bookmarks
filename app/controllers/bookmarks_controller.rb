class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
    @page_title = 'View Bookmarkr'
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end



end
