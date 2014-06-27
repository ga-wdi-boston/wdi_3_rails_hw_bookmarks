class BookmarksController < ApplicationController

  # return all bookmarks in alphabetical order
  def index
    if params[:filter].nil?
      @bookmarks = Bookmark.order(:title)
    else
      @bookmarks = Bookmark.order(:title).where(category: params[:filter])
    end
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
      flash[:notice] = "You have updated the #{@bookmark.title}"
      redirect_to @bookmark
    else
      flash.now[:alert] = @bookmark.errors.full_messages.join(', ')
      render :edit
    end
  end

  # delete specific bookmark
  def destroy
    @bookmark = Bookmark.find(params[:id])
    title = @bookmark.title
    @bookmark.destroy
    redirect_to bookmarks_path
    flash[:notice] = "You have deleted #{title}"
  end

  private

  # return parameters that are allowed to be edited by user
  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :category, :is_favorite, :comment)
  end
end
