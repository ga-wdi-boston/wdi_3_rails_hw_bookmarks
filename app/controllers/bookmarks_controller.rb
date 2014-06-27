class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all.order(:title)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def filter
    if params[:filter_id].to_i < Bookmark::NUM_OF_CATEGORIES
      @bookmarks = Bookmark.filter_by_category(params[:filter_id])
    else
      redirect_to(bookmarks_path)
    end
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark= Bookmark.new(bkmk_params)

    if @bookmark.save
      redirect_to @bookmark
    else
      render :new
    end
  end

  private

  def bkmk_params
    params.require(:bookmark).permit([:url, :title, :comment, :category, :is_favorite])
  end

end
