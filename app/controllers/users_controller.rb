class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			redirect_to questions_path
		else
			render "new"
		end
	end

	def login
		@user = User.new
	end

	def profile
		@user = User.find_by(email: params[:email])

		if @user
			if @user.password == params[:password]
				session[:user_id] = @user.id
			else
				render "login"
			end
		else
			render "login"
		end
	end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password)
		end

end