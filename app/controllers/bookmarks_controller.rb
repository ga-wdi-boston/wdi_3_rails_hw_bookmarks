class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.create(bookmark_params)
    redirect_to bookmarks_path
  end

  def update
    @bookmark = Bookmark.find(params[:id])
  end

  def serious
    @bookmarks = Bookmark.where(category: 'Serious').order(:title)
    render :index
  end

  def funny
    @bookmarks = Bookmark.where(category: 'Funny').order(:title)
    render :index
  end

  def useful
    @bookmarks = Bookmark.where(category: 'Useful').order(:title)
    render :index
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :category, :comment, :is_favorite)
  end
end
