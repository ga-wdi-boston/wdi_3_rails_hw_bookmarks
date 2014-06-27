class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      flash.keep[:notice] = "Bookmark saved!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @category = params[:category]
    @bookmarks = Bookmark.order(title: :asc)

    Bookmark::VALID_CATEGORIES.each do |cat|
      if cat == @category
        @bookmarks = Bookmark.where(category: cat).order(title: :asc)
      end
    end
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update(bookmark_params)
      flash.keep[:notice] = "Bookmark updated!"
      redirect_to @bookmark
    else
      # No worky, try again, show me the form you.
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to root_path
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :category, :comment, :favorite)
  end

end

