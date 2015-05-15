class UsersController < ApplicationController

	include ActiveModel::SecurePassword

	def index
		@users = User.all
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
		@user = User.new
	end

	def edit
		@user = User.find( params[:id])
	end

	def show
		if logged_in?
			@user = current_user
		else
			render 'session/new'
		end
	end

	def update
	  @user = User.find( params[:id])
 	  respond_to do |format|
 	  current_params = user_params
 	  current_params.keys.each do |key|
 	  	if current_params[key] == ""
 	  		current_params.delete( key)
 	  	end
 	  end
 	  logger.info current_params
      if @user.update_attributes(current_params)
        format.html { redirect_to @user, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: edit_user_path(@user) }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
	end

	def destroy
	end

  	private
	    def user_params
	    	params.require(:user).permit(:username, :email, :password, :password_confirmation, :photo, :phone)
	    end

end
