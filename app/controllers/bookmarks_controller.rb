class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.order(title: :asc)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to @bookmark
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.update(params[:id], bookmark_params)
    @bookmark.save
    redirect_to @bookmark
  end

  def delete
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :comment, :favorite)
  end
end
