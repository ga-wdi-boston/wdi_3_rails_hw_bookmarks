class BookmarksController < ApplicationController
  before_action :find_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.order(updated_at: :desc)
  end

  def show
  end

  #  Create new bookmarks
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      flash[:notice] = 'Bookmark added!'
      redirect_to @bookmark
    else
      flash.now[:error] = @bookmark.errors.full_messages.join(', ')
      render :new
    end
  end

  # Edit bookmarks
  def edit
    # edit is to update as new is to create
  end

  def update
    @bookmark.assign_attributes(bookmark_params)
    if @bookmark.save
      flash[:notice] = 'Bookmark updated!'
      redirect_to @bookmark
    else
      flash.now[:error] = @bookmark.errors.full_messages.join(', ')
      render :edit
    end
  end

  def destroy
    if @bookmark.destroy
      flash[:notice] = 'Bookmark deleted!'
      redirect_to action: :index
    else
      flash.now[:error] = @bookmark.errors.full_messages.join(', ')
      redirect action: :index
    end
  end

  # Private methods
  private

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :comment, :favorite)
  end

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
