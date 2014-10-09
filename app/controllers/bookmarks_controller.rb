class BookmarksController < ApplicationController
	before_action :set_bookmark, only: [:show, :edit, :update, :destroy]
	def index
		@bookmarks = Bookmark.all
	end

	def show
	end

	def new
		@bookmark = Bookmark.new
	end

	def edit
	end

	def create
		@bookmark = Bookmark.new(bookmark_params)
		@comment = @bookmark.comments.new

		respond_to do |format|
			if @bookmark.save
				format.html { redirect_to @bookmark, notice: 'Bookmark was successfully created.'}
			else
				format.html { render :new }
			end
		end
	end

	def update
		respond_to do |format|
			if @bookmark.update(bookmark_params)
				format.html { redirect_to @bookmark, notice: 'Bookmark was successfully updated.'}
			else
				format.html { render :edit }
			end
		end
	end

	def destroy
		@bookmark.destroy
		respond_to do |format|
			format.html { redirect_to bookmarks_url, notice: 'Bookmark was successfully dextroyed.'}
		end
	end

	private

		def set_bookmark
			@bookmark = Bookmark.find(params[:id])
		end

		def bookmark_params
			params.require(:bookmark).permit(:url, :title, :category, :checked)
		end
end