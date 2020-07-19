class TravelsController < ApplicationController
  def index
    @travels = Travel.all
  end

  def show
      @travel = Travel.find(params[:id])
      @user = User.find(@travel.user_id)
      @comments = Comment.all
  end

  def new
      @travel = Travel.new
  end

  def create
      @travel = Travel.new(travel_params)
      @travel.user_id = current_user.id
    if
      @travel.save
      redirect_to @travel
    else
      render "new"
    end
  end

  def edit
      @travel = Travel.find(params[:id])
      redirect_to travels_path unless @travel.user_id == current_user.id
  end

  def update
      @travel = Travel.find(params[:id])
    if 
      @travel.update(travel_params)
      redirect_to @travel
    else #if文でエラー発生時と正常時のリンク先を枝分かれにしている。
        render "edit"
    end
  end


  def destroy
      @travel = Travel.find(params[:id])
      @travel.destroy
      redirect_to user_path(@travel.user)
  end

private

  def travel_params
    params.require(:travel).permit(:title, :body, :address, :travel_image)
  end
end
