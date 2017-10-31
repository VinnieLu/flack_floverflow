class User < ApplicationRecord
	validates :email, presence: true, uniqueness: true
  	has_many :questions
  	has_many :answers
  	has_many :question_votes
  	has_many :answer_votes
  	has_many :question_comments
  	has_many :answer_comments

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

end