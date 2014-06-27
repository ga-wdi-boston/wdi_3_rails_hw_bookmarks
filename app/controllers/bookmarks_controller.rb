class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.order(:title)
    @categories = Bookmark.distinct.pluck(:category)
    if params[:category].present?
      @bookmarks = Bookmark.where(category: params[:category]).order(:title)
    end
  end

  # Get Bookmark/:id
  def show
    @bookmark = Bookmark.find(params[:id])
  end

  # Get Bookmark/new
  def new
    @bookmark = Bookmark.new
  end

  # Post /Bookmarks
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      flash[:notice] = "Bookmark successfully created"
      redirect_to bookmarks_path
    else
      flash.now[:notice] = "Post wasn't saved"
      render :new
    end
  end


  def edit
    @bookmark = Bookmark.find(params[:id])
  end


  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: "You have updated the #{@bookmark.title}"
    else
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to @bookmark, notice: "You have deleted the bookmark"
  end

  private

  def bookmark_params
    params.require(:bookmark).permit([:url, :title, :comment,:category,:is_favorited])
  end


end
