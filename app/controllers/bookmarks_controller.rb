class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  def index
    # sort by column
    # as seen on:
    # http://railscasts.com/episodes/228-sortable-table-columns
    @bookmarks = Bookmark.order(sort_column + " " + sort_direction)
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @bookmark, notice: 'Bookmark was successfully created.'
    else
      render :new
    end
  end

  def show
    @bookmark = Bookmark.find params[:id]
  end

  def edit
  end

  def update
    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: 'Bookmark was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmarks_url, notice: 'Bookmark was successfully deleted.'
  end


  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :description, :category, :favorite)
  end

  def sort_column
    Bookmark.column_names.include?(params[:sort]) ? params[:sort] : "title"
  end

  def sort_direction
    ["asc", "desc"].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
