class SouvenirsController < ApplicationController

  def create
  	@souvenir = Souvenir.new(souvenir_params)
  end

  def index
    @souvenir = Souvenir.new
    @souvenirs = Souvenir.all
  end

  def destroy
  end

  private

  def souvenir_params
  	params.require(:souvenir).permit(:name, :count, :price)
  end
end
