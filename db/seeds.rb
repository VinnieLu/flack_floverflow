require 'faker'


users = 5.times do

  User.create( :first_name => Faker::Name.first_name,
            :last_name => Faker::Name.last_name,
            :email => Faker::Internet.email,
            :password_hash => 'password')
end

questions = 10.times do

  Question.create( :question => Faker::HarryPotter.quote,
                :user_id => rand(1..5) )

end

questioncomments = 5.times do
  QuestionComment.create(  :comment => Faker::Lorem.sentences,
                        :user_id => rand(1..5),
                        :question_id => rand(1..10) )
end

answers = 15.times do
  Answer.create(   :answer => Faker::Lorem.paragraph,
                :user_id => rand(1..5),
                :question_id => rand(1..10) )
end

answercomments = 5.times do
  AnswerComment.create(  :comment => Faker::Lorem.sentences,
                      :user_id => rand(1..5),
                      :answer_id => rand(15) )
end

questionvotes = rand(10..50).times do
  QuestionVote.create( :question_id => rand(1..10),
                    :user_id => rand(1..5),
                    :up => 1,
                    :down => nil)
end

questionvotes = rand(10..50).times do
  QuestionVote.create( :question_id => rand(1..10),
                    :user_id => rand(1..5),
                    :up => nil,
                    :down => -1)
end

answervotes = rand(10..50).times do
  AnswerVote.create( :answer_id => rand(1..15),
                  :user_id => rand(1..5),
                  :up => 1,
                  :down => nil)
end

answervotes = rand(10..50).times do
  AnswerVote.create( :answer_id => rand(1..15),
                  :user_id => rand(1..5),
                  :up => nil,
                  :down => -1)
end