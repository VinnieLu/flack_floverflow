class QuestionVotesController < ApplicationController

	def create
		@question_vote = QuestionVote.new(user_id: 1, question_id: params[:question_id], up: 1, down: 0)
		@question_vote.save

		if params[:page] == "show"
			redirect_to question_path(@question_vote.question)
		else
			redirect_to questions_path
		end
	end

	def destroy
		@question_vote = QuestionVote.where(question_id: params[:question_id]).last
		@question_vote.destroy

		if params[:page] == "show"
			redirect_to question_path(@question_vote.question)
		else
			redirect_to "/questions"
		end
	end

end