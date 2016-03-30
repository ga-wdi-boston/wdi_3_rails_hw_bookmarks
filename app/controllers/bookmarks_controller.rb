class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.where(category: selected_category).order(:title)

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

  def manage
    @bookmarks = Bookmark.all.order(:title)
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: "Bookmark updated!"
    else
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    flash[:success] = "Your bookmark has been deleted!"
  end

private

  def selected_category
    params[:category].presence || Bookmark::VALID_CATEGORY
  end

  def bookmark_params
    params.require(:bookmark).permit([:url, :title, :comment, :category, :is_checked_favorite])
  end

end
