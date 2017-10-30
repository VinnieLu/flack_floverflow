class QuestionCommentsController < ApplicationController

	def index
	end

	def new
		@question = Question.find_by(id: params[:question_id])

		@question_comment = @question.question_comments.new
	end

	def create
		@question = Question.find_by(id: params[:question_id])
		@question_comment = QuestionComment.new(question_comment_params)

		if @question_comment.save
			redirect_to @question_comment.question
		else
			render "new"
		end
	end

	private
		def question_comment_params
			params.require(:question_comment).permit(:comment, :user_id, :question_id)
		end

end