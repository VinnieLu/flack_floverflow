class AnswerCommentsController < ApplicationController

	def index
	end

	def new
		@answer = Answer.find_by(id: params[:answer_id])

		@answer_comment = @answer.answer_comments.new
	end

	def create
		@answer = Answer.find_by(id: params[:answer_id])
		@answer_comment = AnswerComment.new(answer_comment_params)
		@answer_comment.save

		if @answer_comment.save
			redirect_to @answer.question
		else
			render "new"
		end
	end

	private
		def answer_comment_params

			params.require(:answer_comment).permit(:comment, :user_id, :answer_id)
		end
end