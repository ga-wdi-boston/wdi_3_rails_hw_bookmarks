class BookmarksController < ApplicationController

  # return all bookmarks in alphabetical order
  def index
    @bookmarks = Bookmark.order(:title)
  end

  # return a specific bookmark
  def show
    @bookmark = Bookmark.find(params[:id])
  end

  # create a new instant of bookmark class
  def new
    @bookmark = Bookmark.new
  end

  # create bookmark with provided user input and save to db
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  # return a specific bookmark to edit
  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  # update a specific bookmark based off user input and save changes to db
  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to bookmark_path, notice: "You have updated the #{@bookmark.title}"
    else
      render :edit
    end
  end

  private

  # return parameters that are allowed to be edited by user
  def bookmark_params
    params.require(:bookmark).permit([:title, :url, :category, :is_favorite, :comment])
  end
end
