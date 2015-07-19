class BookmarksController < ApplicationController

#   def index
#     @bookmarks = Bookmark.all
#   end

#   def show
#   end


  # def index
  #   # @bookmark = Bookmark.all
  # end

  def new
    @bookmarks = Bookmark.new
  end

  def create
    @bookmark = Bookmark(bookmark_params)
    if @bookmark.save

    end

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @bookmark = Bookmark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookmark_params
      params.require(:bookmark).permit(:name, :author)
    end

end
