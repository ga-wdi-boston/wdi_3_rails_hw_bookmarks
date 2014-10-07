class BookmarksController <ApplicationController

	def index
		@bookmarks = Bookmark.all
	end

	def create
		@bookmark = bookmark.new(bookmark_params)

		if @bookmark.save
	      redirect_to @bookmark, notice: 'Bookmark was successfully created.'
	    else
	      render :new
	    end
	end

	def new
		@bookmark = Bookmark.new
	end

	def edit

	end

	def show
	end

	def update
		
	end

	def destroy

	end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookmark_params
      # params is a special hash
      # .require
      # .permit
      # saying what parameters can come through and require them to come through the entry hash
      params.require(:bookmark).permit(:url, :title, :comment)
    end
end