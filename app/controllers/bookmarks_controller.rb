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
    @bookmark = Bookmark.find(params[:id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
        flash[:notice] = "Bookmark successfully created"
        redirect_to @bookmark
    else
      flash.now[:alert] = @bookmark.errors.full_messages.join(', ')
      render :new
    end
  end

  private
  def bookmark_params
    params.require(:bookmark).permit([:title, :url])
  end
end
