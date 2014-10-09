class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.order(:title)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
    @comment = @bookmark.comments.build
    @comments = @bookmark.comments
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @bookmark, notice: 'Bookmark was successfully created.'
    else
      render :new
    end
  end

  def new
    @bookmark = Bookmark.new
  end

  def update
    if @bookmark.update_attributes(bookmark_params)
      redirect_to @bookmark, notice: 'Bookmark was successfully updated.'
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @bookmark.destroy
    redirect_to action: :index, notice: 'Bookmark was successfully destroyed.'
  end

  private
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    def bookmark_params
      params.require(:bookmark).permit(:title, :category, :description, :favorite, :url)
    end
end
