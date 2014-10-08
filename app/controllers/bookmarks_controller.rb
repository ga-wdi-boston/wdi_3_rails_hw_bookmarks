class BookmarksController < ApplicationController
  # before_action(:set_bookmark, only: [:show, :edit, :update, :destroy]

    def index
      @bookmarks = Bookmark.all
    end

    def new
      @bookmark = Bookmark.new
    end

    # def create
    #   @bookmark = Bookmark.new

    #   if @bookmark.save
    #     redirect_to @bookmark, notice: 'Bookmark was successfully created.'
    #   else
    #     render :new
    #   end
    # end



  # private
  #   def set_bookmark
  #     # SELECT * FROM entries WHERE id = 1 LIMIT 1
  #     @bookmark = Bookmark.find(params[:id])
  #   end
end
