class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  # GET /bookmarks
  def index
    @bookmarks = Bookmark.all
  end

  # GET /bookmarks/1
  # The `1` here indicates a specific entry of bookmark with ID 1: Retrieves a single bookmark.
  def show
    # @bookmark = Bookmark.find params[:id]

    # to show what's actually being passed into @bookmark, put binding.pry here.

    # Same as above:
      # bookmark_id = params[:id]
      # @bookmark = Bookmark.find bookmark_id

    # @bookmark alone would return an array of a single bookmark's elements.
  end

  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new
  end

  # GET /bookmarks/1/edit
  def edit
  end

  # POST /bookmarks
  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @bookmark, notice: 'Bookmark was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bookmarks/1
  def update

    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: 'Bookmark was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bookmarks/1
  def destroy
    # @bookmark = Bookmark.find params[:id]
    @bookmark.destroy

    redirect_to bookmarks_url, notice: 'Bookmark was successfully destroyed.'
  end

  private
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    def bookmark_params
      params.require(:bookmark).permit(:title, :category, :description, :favorite, :url)
    end
end
