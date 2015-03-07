class CommentsController < ApplicationController
	# before_action :set_comment, only: [:edit, :updtae, :destroy]

	# def index
	# 	@comments = Comment.all
	# end

	# def new
	# 	@comment = Comment.new
	# end

	def create
		@comment = Comment.new(comment_params)

		if @comment.save
			format.html { redirect_to @bookmark, notice: 'Comment was successfully created.'}
		else
			formet.html { render :new }
		end
	end

	private

		# def set_comment
		# 	@comment = Comment.find(params[:id])
		# end

		def comment_params
			params.require(:comment).permit(:comment, :bookmark_id)
		end
end