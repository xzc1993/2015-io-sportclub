class AdminController < ApplicationController

  def admin_panel
  end

  def update
    @user = User.find(params[:user_id])
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

  private
  def user_params
    params[:user][:groups] ||= []
    params.require(:user).permit(:username, groups: [])
  end

end
