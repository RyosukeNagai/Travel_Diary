class UsersController < ApplicationController
  before_action :screen_user, only: [:edit, :update]

  def show
   @user = User.find(params[:id])
   @travels = @user.travels
  end

  def edit
   @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "変更を保存しました"
      redirect_to user_path(@user)
    else
      redirect_to edit_user_path(@user)
    end
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

