class AnswersController < ActionController::Base

	def new
		@answer = Answer.new
	end

	def create
		@answer = Answer.new(answer_params)

		if @answer.save
			redirect_to @answer.question
		else
			render "new"
		end
	end

	private
		def answer_params
			params.require(:answer).permit(:answer, :user_id, :question_id)
		end

end