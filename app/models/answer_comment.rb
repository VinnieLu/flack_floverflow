class AnswerComment < ApplicationRecord
	validates :comment, presence: true
  	belongs_to :user, optional: true
  	belongs_to :answer, optional: true
end