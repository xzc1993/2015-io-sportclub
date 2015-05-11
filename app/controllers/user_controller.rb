class UserController < ApplicationController

	include ActiveModel::SecurePassword

	def index
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	def new
	end

	def edit
	end

	def show
		if current_user == nil
			@username = 'Anonim'
		else
			@username = current_user.username	
		end
	end

	def update
	end

	def destroy
	end

  	private
	    def user_params
	    	params.require(:user).permit(:username, :email, :password, :password_confirmation)
	    end

end
