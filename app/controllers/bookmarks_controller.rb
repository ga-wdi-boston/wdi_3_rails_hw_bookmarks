class BookmarksController < ApplicationController
  # Show all bookmarks in alphabetical order
  def index
    @bookmarks = Bookmark.order(:title)
  end
end
