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


private

  # Private params hash; indicates parameters that can be edited by user
  def bookmark_params
    params.require(:bookmark).permit([:title, :url, :category, :is_favorite, :comment])
  end



end
