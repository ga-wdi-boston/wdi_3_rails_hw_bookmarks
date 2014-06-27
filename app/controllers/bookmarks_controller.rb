class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  # def edit
  #   @bookmark = Bookmark.edit(params)

  # end

  def show
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end

  end

  private
  def bookmark_params
    params.require(:bookmark).permit([:title, :url])
  end
end
