class UsersController < ApplicationController
  before_action :screen_user, only: [:edit, :update]

  def show
   @user = User.find(params[:id])
   @travels = @user.travels
  end

  def edit
   @user = User.find(params[:id])
   redirect_to user_path(current_user) unless @user.id == current_user.id
  end

  def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to user_path(@user)
  end


private

  def user_params
   params.require(:user).permit(:name, :introduce, :user_image)
  end

  def screen_user
      unless params[:id].to_i == current_user.id
        redirect_to user_path(current_user)
      end
  end

end
