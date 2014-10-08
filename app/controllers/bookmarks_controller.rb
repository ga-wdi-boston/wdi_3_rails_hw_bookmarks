class BookmarksController < ApplicationController
   before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.all.order(title: :asc)  #thank you Holly!
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @bookmark, notice: 'Bookmark saved!'
    else
      render :new
    end
  end

  def update
    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: 'Bookmark updated!'
    else
      render :edit
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmarks_path, notice: 'Bookmark deleted!'
  end

  private

    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    def bookmark_params
      params.require(:bookmark).permit(:url,:title,:comment,:category,:favorite_flag)
    end

end

