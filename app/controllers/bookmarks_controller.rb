class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all.order(:title)

    @commented_bookmarks = @bookmarks.select { |bookmark| bookmark.has_comment? }
  end

end
