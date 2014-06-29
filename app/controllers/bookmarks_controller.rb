class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
    if params[:category] == "funny"
      @bookmarks = Bookmark.where(category_id: '0')
    elsif params[:category] == "serious"
      @bookmarks = Bookmark.where(category_id: '1')
    elsif params[:category] == "useful"
      @bookmarks = Bookmark.where(category_id: '2')
    end
  end

  def new
    @bookmark = Bookmark.new

  end
  def edit
    @bookmark = Bookmark.find(params[:id])
  end
  def update
   @bookmark = Bookmark.find(params[:id])

   if @bookmark.update(bookmark_params)
        flash[:notice] = "Bookmark successfully updated"
        redirect_to @bookmark
    else
      flash.now[:alert] = @bookmark.errors.full_messages.join(', ')
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_path
  end

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
    params.require(:bookmark).permit([:title, :url, :category_id, :comment, :favorite])
  end
end
