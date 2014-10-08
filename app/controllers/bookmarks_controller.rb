class BookmarksController < ApplicationController

  #im not sure if i really nead these or what they truly do,
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.all
    # @title = Bookmark.title

  end


  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def edit
  end


  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @bookmark, notice: "Bookmark was sucsessfullly Created."
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @bookmark.update(bookmark_params)
        redirect_to @bookmark, notice: "Bookmark was successfully updated."
      else
        render :edit
      end
    end
  end

  def destroy
    @bookmark.destroy
    respond_to do |format|
      format.html {redirect_to bookmarks_url, notice: "Bookmark was successfully destroyed."}
    end
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :description, :category, :favorite)
  end
end


