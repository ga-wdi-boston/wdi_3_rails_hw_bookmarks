class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.order(updated_at: :desc)
  end
end
