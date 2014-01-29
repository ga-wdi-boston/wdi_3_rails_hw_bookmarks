class BookmarksController <ApplicationController
	def index
		@bookmark = Bookmark.new
		@bookmarks = Bookmark.all.order(:title)
	end

	def show
		id = (params[:id])
		@bookmark = Bookmark.find(:id)
	end

	def edit

	end


	def new
		@bookmark = Bookmark.new
	end

	def create
			@bookmark = Bookmark.new(bookmark_params)

		if @bookmark.save
				flash[:notice] = "Bookmark Saved!"
				redirect_to @bookmark
		else
				flash.now[:error] = @bookmark.errors.full_messages.join(', ')
				render :new
		end
	end

private

	def bookmark_params
		params.require(:bookmark).permit(:url, :title, :comment, :favorite)
	end

end