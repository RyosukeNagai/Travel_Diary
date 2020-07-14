class SouvenirsController < ApplicationController
  def new
  	@souvenir = Souvenir.new
  end

  def create
  	@souvenir = Souvenir.new(souvenir_params)

  end

  def show
  end

  def destroy
  end

  private

  def souvenir_params
  	params.require(:souvenir).permit(:name, :count, :price)
  end
end
