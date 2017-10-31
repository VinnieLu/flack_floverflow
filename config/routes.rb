Rails.application.routes.draw do
	get "users/login"
	post "users/profile"

	resources :users

	resources :questions do
		resources :question_comments
		resources :question_votes
	end

	# resources :answer_comments

	resources :answers do
		resources :answer_comments
		resources :answer_votes
	end

	root "questions#index"
end
