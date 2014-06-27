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
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])

    if @bookmark.update(bookmark_params)
      redirect_to @bookmark
    else
      render :edit
    end
  end

  def destroy

  end

  private

  def bookmark_params
    params.require(:bookmark).permit([:title, :url, :comment, :category, :is_favorite])
  end
end
