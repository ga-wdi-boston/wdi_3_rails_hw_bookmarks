class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.all
  end

  private
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
