class BookmarksController <ApplicationController
	def index
		@bookmark = Bookmark.new
		@bookmarks = Bookmark.all
	end

	def new
		@bookmark = Bookmark.new
	end

	def edit
		@bookmark = Bookmark.new
		redirect_to @bookmark
	end

	def create
			@bookmark = Bookmark.new(bookmark_params)
			redirect_to @bookmark
			# the above redirects to the show page for that bookmark default
	end

private

	def bookmark_params
		params.require(:bookmark).permit(:url, :title, :comment, :favorite)
	end

end