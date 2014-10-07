class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def create
  end

  def new
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
  end

end