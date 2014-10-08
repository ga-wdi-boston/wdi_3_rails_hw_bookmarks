class BookmarksController < ApplicationController

#NEED TO SWITCH INDEX AND SHOW SO SHOW ACTION AND VIEW BECOMES THE ROOT/LANDING PAGE

#NEED TO WORK MORE WITH PLURALIZATION AND SINGULAR USAGE IN CONTROLLERS

  def index
    @bookmarks = Bookmark.all.order(:title)
  end

  def new
    @bookmark = Bookmark.new
  end

#NEED TO GET TITLE TO ALPHABETIZE

  def show
    @bookmark = Bookmark.find(params[:id])
  end

#SOME OF THIS MAGIC WAS COPIED AND PASTED
  def create
    @bookmark = Bookmark.create(bookmark_params)
    if @bookmark.save
      flash[:notice] = 'Bookmark created!'
      redirect_to bookmarks_path
    else
      flash.now[:alert]=@bookmark.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])

    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: "Bookmark update complete"
    else
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.destroy(params[:id])
  end


private
    def bookmark_params
      params.require(:bookmark).permit(:url, :title, :description, :category, :favorite)
    end
end

