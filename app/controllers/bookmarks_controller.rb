class BookmarksController < ApplicationController
  before_action :find_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.order(:title)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
    @comment = Comment.new(bookmark_id: params[:id])
  end

  def edit
  end

  def update
    if @bookmark.update_attributes(bookmark_params)
      redirect_to @bookmark, notice: 'Bookmark was successfully updated.'
    else
      render :edit
    end
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to @bookmark, notice: 'Bookmark was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to action: :index, notice: 'Bookmark was successfully destroyed.'
  end

  private
    def find_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    def bookmark_params
      params.require(:bookmark).permit(:title, :category, :description, :favorite, :url)
    end
end
