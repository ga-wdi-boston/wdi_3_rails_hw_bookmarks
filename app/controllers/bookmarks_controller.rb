class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
  end

  def index
    @bookmarks = Bookmark.order(title: :desc)
  end

end

