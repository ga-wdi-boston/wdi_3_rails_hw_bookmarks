class BookmarksController < ApplicationController

	def index
		@bookmarks = Bookmark.all
	end

	def new
	end

	def create
	end

	private

	def blat_params
		params.require(:bookmark).permit(:name, :url)
	end

end
