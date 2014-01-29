class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.order(title: :asc)
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
      flash[:notice] = 'Created a new bookmark!'
      redirect_to '/bookmarks'
    else
      flash.now[:error] = @bookmark.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    @bookmark.assign_attributes(bookmark_params)

    if @bookmark.save
      flash[:notice] = 'Updated the bookmark!'
      redirect_to '/bookmarks'
    else
      flash.now[:errors] = @bookmark.errors.full_messages
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      flash[:notice] = 'Deleted the bookmark!'
      redirect_to '/bookmarks'
    else
      flash.now[:errors] = @bookmark.errors.full_messages
      redirect_to :back
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment, :favorite)
  end
end
