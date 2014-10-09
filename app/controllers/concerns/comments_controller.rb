class CommentsController < ApplicationController
	private

		def comment_params
			params.require(:comment).permit(:comment, :bookmark_id)
		end
end