class SouvenirsController < ApplicationController

  def index
    @shiori = Shiori.find(params[:shiori_id])
    @souvenir = Souvenir.new
    @souvenirs = Souvenir.where(shiori_id: @shiori.id)
  end

  def create
    @shiori = Shiori.find(params[:shiori_id])
  	@souvenir = Souvenir.new(souvenir_params)
    @souvenir.shiori_id = @shiori.id
    @souvenir.save
    redirect_to shiori_souvenirs_path(@shiori)
  end

  def destroy
    @souvenir = Souvenir.find(params[:id])
    @souvenir.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def souvenir_params
  	params.require(:souvenir).permit(:name, :count, :price,:shiori_id)
  end
end
