class BookmarksController < ApplicationController
	def index
		@bookmarks = Bookmark.all
	end

	def show
		@bookmark = Bookmark.find(params[:id])
	end

	def new
		@bookmark = Bookmark.new
	end

	def create
		@bookmark = Bookmark.new(bookmark_params)

		if @bookmark.save #or: @blat = Blat.create(params[:blat])
			flash[:notice] = 'Created a new bookmark!' #We use flash[] because we want it to show on the *next* request.
			redirect_to @bookmark
		else
			#Use flash.now[] because we want it to show on *this* request.
			flash.now[:error] = @bookmark.errors.full_messages.join(', ')
			render :new
		end
	end

	private

	def bookmark_params
		params.require(:bookmark).permit(:url, :title, :comment, :favorite)
	end
end
