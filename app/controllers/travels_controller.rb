class TravelsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end


  def destroy
  end

private

  def travel_params
    params.require(:travel).permit(:title, :body, :address, :travel_image)
  end
end
