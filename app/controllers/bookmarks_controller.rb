class BookmarksController < ApplicationController
	def index
		@bookmarks = Bookmark.all.order(:title)
	end
	def new
		@bookmark = Bookmark.new
	end

	def create
		@bookmark = Bookmark.new(bookmark_params)
		if @bookmark.save
			flash[:notice] = 'Bookmark saved'
			redirect_to root_url
		else
			flash.now[:error] = @bookmark.errors.full_messages.join(', ')
			render :new
		end
	end

	private

	def bookmark_params
		params.require(:bookmark).permit(:title, :url, :comment, :favorite)
	end
end
