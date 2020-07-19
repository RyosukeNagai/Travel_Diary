class PreparationsController < ApplicationController

  def index
    @shiori = Shiori.find(params[:shiori_id])
    @preparation = Preparation.new
    @preparations = Preparation.where(shiori_id: @shiori.id)
  end

  def create
    @shiori = Shiori.find(params[:shiori_id])
    @preparation = Preparation.new(preparation_params)
    @preparation.shiori_id = @shiori.id
    @preparation.save
    redirect_to shiori_preparations_path(@shiori)
  end

  def edit
    @shiori = Shiori.find(params[:shiori_id])
    @preparation = Preparation.find(params[:id])
  end

  def update
    @shiori = Shiori.find(params[:shiori_id])
    @preparation = Preparation.find(params[:id])
    if @preparation.update(preparation_params)
      redirect_to shiori_preparations_path(@shiori)
    else
      render "edit"
    end
  end

  def destroy
    @preparation = Preparation.find(params[:id])
    @preparation.destroy
    redirect_back(fallback_location: root_path)
  end
  
private

  def preparation_params
    params.require(:preparation).permit(:name, :shiori_id)
  end
end

