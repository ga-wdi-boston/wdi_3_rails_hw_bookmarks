class BookmarksController <ApplicationController
	def index
		@bookmark = Bookmark.new
		@bookmarks = Bookmark.all
	end

	def new
		@bookmark = Bookmark.new
		@bookmark.save
	end

	# def edit
	# 	@bookmark = Bookmark.new
	# 	redirect_to @bookmark
	# end

	def show
		@bookmark = Bookmark.find(params[:id])
			if @bookmark.save
				flash[:notice] = "Updated a new bookmark!"
				redirect_to @bookmark
			else
				flash.now[:error] = @bookmark.errors.full_messages.join(', ')
			end
	end

	def create
			@bookmark = Bookmark.new(bookmark_params)
			if @bookmark.save
				flash[:notice] = "Created a new bookmark!"
				redirect_to @bookmark
			else
				flash.now[:error] = @bookmark.errors.full_messages.join(', ')
			end
	end


private

	def bookmark_params
		params.require(:bookmark).permit(:url, :title, :comment, :favorite)
	end

end