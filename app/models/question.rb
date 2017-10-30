class Question < ApplicationRecord
	validates :question, presence: true
  	belongs_to :user
  	has_many :answers
  	has_many :question_votes
  	has_many :question_comments
end