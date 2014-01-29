class BookmarksController < ApplicationController

	def index
		@bookmark = Bookmark.new
		@bookmarks = Bookmark.all
	end

	def create
		@bookmark = Bookmark.new
	end


end