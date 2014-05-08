class NewController < ApplicationController

  def index
    @page_title = 'New Bookmarkr'
  end

  def post
    Bookmark.new(url: url, title: title, comment: comment, category: category, is_favorite: is_favorite)
  end
end
