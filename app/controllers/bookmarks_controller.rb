class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all.order(title: :asc)
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to action: :index
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to action: :index
  end

  def edit
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment)
  end


end
