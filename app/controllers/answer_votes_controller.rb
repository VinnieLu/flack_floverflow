class AnswerVotesController < ApplicationController

	def create
		@answer_vote = AnswerVote.new(user_id: 1, answer_id: params[:answer_id], up: 1, down: 0)
		@answer_vote.save

		redirect_to question_path(@answer_vote.answer.question)
	end

	def destroy
		@answer_vote = AnswerVote.where(answer_id: params[:answer_id]).last
		@answer_vote.destroy

		redirect_to question_path(@answer_vote.answer.question)
	end

end