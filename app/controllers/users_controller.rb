class UsersController < ApplicationController

	include ActiveModel::SecurePassword

	def index
		@users = User.all
	end

	def create
		current_params = user_params
		current_params[:groups] = Group.find( current_params[:groups])
		@user = User.new(current_params)
		@user.verified = false
		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	def new
		@user = User.new
		@groups = Group.all
	end

	def edit
		@user = User.find( params[:id])
		@groups = Group.all		
	end

	def show
		if logged_in?
			#@user = current_user
		  @user = User.find(params[:id])
    else
			render 'session/new'
		end
	end

	def verify
	  @user = User.find( params[:id])
	  logger.info @user.email
	  VerifiedUserMailer.send_verification_mail(@user).deliver_now
	  @user.verified = true
	  @user.save()
	end

	def update
	  @user = User.find( params[:id])
 	  respond_to do |format|
 	  current_params = user_params
 	  current_params[:groups] = Group.find( current_params[:groups])
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
		user = User.find( params[:id])
		user.delete()
	end

  	private
	    def user_params
	    	params[:user][:groups] ||= []
	    	params.require(:user).permit(:username, :email, :password, :password_confirmation, :photo, :phone, groups: [])
	    end

end
