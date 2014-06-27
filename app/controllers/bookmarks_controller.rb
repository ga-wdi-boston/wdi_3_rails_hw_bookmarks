class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all.order(:title)

    @commented_bookmarks = @bookmarks.select { |bookmark| bookmark.has_comment? }
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  def edit

  end

  def destroy

  end

  private

  def bookmark_params
    params.require(:bookmark).permit([:title, :url, :comment, :category, :is_favorite])
  end
end
