class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  # Get Bookmark/:id
  def show
    @bookmark = Bookmark.find(params[:id])
  end

  # Get Bookmark/new
  def new
    @bookmark = Bookmark.new
  end

  # # Post /Bookmarks
  # def create
  #   @bookmark = Bookmark.new(bookmark_params)
  #   if @bookmark.save
  #     redirect_to bookmarks_path
  #   else
  #     render :new
  #   end
  # end


  # def edit
  #   @bookmark = Bookmark.find(params[:id])
  # end


  # def update
  #   @bookmark = Bookmark.find(params[:id])
  #   if @bookmark.update(bookmark_params)
  #     redirect_to @bookmark, notice: "You have updated the #{@bookmark.name}"
  #   else
  #     render :edit
  #   end
  # end


  # def destroy
  #   @bookmark = Bookmark.find(params[:id])
  #   @bookmark.destroy

  #   redirect_to @bookmark, notice: "You have deleted the bookmark"
  # end


  # private

  # def bookmark_params
  #   params.require(:bookmark).permit([:url, :title, :comment,:category,:is_favorited])
  # end


end
