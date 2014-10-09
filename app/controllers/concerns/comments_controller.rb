class CommentsController < ApplicationController
	before_action :set_comment, only: [:show, :edit, :updtae, :destroy]

	def index
		@comments = Comment.all
	end

	def create
		@comment = Comment.create(comment_params)
	end

	private

		def set_comment
			@comment = Comment.find(params[:id])
		end

		def comment_params
			params.require(:comment).permit(:comment, :bookmark_id)
		end
end