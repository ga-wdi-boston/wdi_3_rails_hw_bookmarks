class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
    # @yes_description = if @bookmarks.description == nil
    #   "no"
    # else
    #   "yes"
    # end
  end



end
