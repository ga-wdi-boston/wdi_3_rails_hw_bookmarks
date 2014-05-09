class BookmarksController < ApplicationController

  def index
    # binding.pry
    @categories = Bookmark.pluck(:category).uniq.compact.sort
    if params[:category]
      @bookmarks = Bookmark.where(category: params[:category])
    else
      @bookmarks = Bookmark.order(:title).all
    end
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    bookmark = Bookmark.create(bookmark_params)
    redirect_to bookmarks_path
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    bookmark = Bookmark.find(params[:id])
    bookmark.update(bookmark_params)
    redirect_to bookmarks_path
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to root_path, notice: "You have deleted the bookmark"
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:URL, :title, :comment, :category, :is_favorite)
  end

end
