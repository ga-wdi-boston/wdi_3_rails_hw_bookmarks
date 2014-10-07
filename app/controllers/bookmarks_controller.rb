class BookmarksController < ApplicationController
  before_action :set_bookmark, only [:show, :edit, :update, :destroy]


  private
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
