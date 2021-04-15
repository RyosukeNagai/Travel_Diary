class ShiorisController < ApplicationController
  def index
    @shioris = Shiori.all
    shioris = @shioris
    @myshioris = current_user.shioris
  end

  def show
    @shiori = Shiori.find(params[:id])
    @user = User.find(@shiori.user_id)
    @souvenir = Souvenir.new
    @souvenirs = Souvenir.where(shiori_id: @shiori.id)
  end

  def new
    @shiori = Shiori.new
  end

  def create
      @shiori = Shiori.new(shiori_params)
      @shiori.user_id = current_user.id
    if @shiori.save
      redirect_to shioris_path(current_user)
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
    if @shiori.update(shiori_params)
        redirect_to @shiori
    else #if文でエラー発生時と正常時のリンク先を枝分かれにしている。
        render "edit"
    end
    end


  def destroy
      @shiori = Shiori.find(params[:id])
      @shiori.destroy
      redirect_to shioris_path
  end

private

  def shiori_params
    params.require(:shiori).permit(:title, :body,:user_id, :shiori_image)
  end
end
