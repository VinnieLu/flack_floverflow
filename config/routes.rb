Rails.application.routes.draw do
	get "/users/login", controller: "users", action: "login"
	post "/users/profile", controller: "users", action: "profile" 
	# get "/users/new", controller: "users", action: "new", as: "new_user"
	# get "/users", controller: "users", action: "index"
	# post "/users", controller: "users", action: "create"
	# get "/users/:id/edit", controller: "users", action: "edit"
	# patch "/users/:id", controller: "users", action: "update"
	# put "/users/:id", controller: "users", action: "update"
	# delete "/users/:id", controller: "users", action: "destroy"

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
