class ShiorisController < ApplicationController
  def index
    @travels = Travel.all
  end

  def show
    @travel = Travel.find(params[:id])
    @user = User.find(@travel.user_id)
  end

  def new
    @travel = Travel.new
  end

  def create
      @travel = Travel.new(travel_params)
      @travel.user_id = current_user.id
    if
      @travel.save
      redirect_to user_path(current_user)
    else
      render "new"
    end
  end

  def edit
    @shiori = Shiori.find(params[:id])
    redirect_to travels_path unless @shiori.user_id == current_user.id
  end

  def update
      @shiori = Shiori.find(params[:id])
    if @shiori.update(travel_params)
        redirect_to @shiori
    else #if文でエラー発生時と正常時のリンク先を枝分かれにしている。
        render "edit"
    end
    end


  def destroy
      @shiori = Shiori.find(params[:id])
      @shiori.destroy
      redirect_to user_path(@shiori.user)
  end

private

  def travel_params
    params.require(:shiori).permit(:title, :body)
  end
end
