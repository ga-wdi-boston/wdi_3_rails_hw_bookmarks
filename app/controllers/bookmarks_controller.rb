class BookmarksController < ApplicationController


  def index
    @bookmarks = Bookmark.all.order(:title)
  end

  def new
    @bookmark = Bookmark.new
  end

  def show
  end



end
