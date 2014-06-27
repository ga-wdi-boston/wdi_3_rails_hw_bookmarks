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
    bookmark = Bookmark.new(bookmark_params)
    if bookmark.save
      redirect_to bookmarks_path
    end
  end
  # def edit

  # end

  private

  def bookmark_params
    params.require(:bookmark).permit([:url, :title, :comment, :category, :is_favourite])
  end
end

