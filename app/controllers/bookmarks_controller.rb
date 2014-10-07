class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def create
    # I want to SAVE my NEW BOOKMARK.
    # I am getting NEW BOOKMARK PARAMETERS w/ this action.
    @bookmark = Bookmark.new(bookmark_params)  # what is `bookmark_params`?
    @bookmark.save
    redirect_to @bookmark
  end

  def new
    @bookmark = Bookmark.new
  end

  def edit
    # I want to EDIT my EXISTING BOOKMARK.
    # I need to get THAT BOOKMARK from my DATABASE.
    @bookmark = Bookmark.find(params[:id])
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    @bookmark.update(bookmark_params)
    redirect_to @bookmark
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_path
  end

  private

    # This thing is required.
    # It's a pain to remember, but yeah.
    def bookmark_params
      params.require(:bookmark).permit(:url, :title, :description)
    end

end