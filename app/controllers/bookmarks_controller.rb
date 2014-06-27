class BookmarksController < ApplicationController

  # All bookmarks, alphabetized by title
  def index
    @bookmarks = Bookmark.order(:title)
  end

  # Returns a specific bookmark
  def show
    @bookmark = Bookmark.find(params[:id])
  end

  # Creates a new instance of a bookmark
  def new
    @bookmark = Bookmark.new
  end

  # Allows user to create a new bookmark
  def create
    # Instantiate a new Product instance from the form fields, which live in the params hash
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  # Provides bookmark to edit
  def edit
    @bookmark = Bookmark.find(params[:id])
  end

 # Update an existing model, Bookmark
 # BookmarksController update method
  def update
    # Get the Bookmark to update
    @bookmark = Bookmark.find(params[:id])

    # Using strong params, update this bookmark
    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: "You have updated the #{@bookmark.title}"
    else
    # Doesn't work, shows the form
      render :edit
    end
  end



private

  # Private params hash; indicates parameters that can be edited by user
  def bookmark_params
    params.require(:bookmark).permit([:title, :url, :category, :is_favorite, :comment])
  end



end
