class SchedulesController < ApplicationController
  def index
    @shiori = Shiori.find(params[:shiori_id])
    @schedule = Schedule.new
    @schedules = Schedule.where(shiori_id: @shiori.id).order("year","month","day","time")
  end

  def create
    @shiori = Shiori.find(params[:shiori_id])
    @schedule = Schedule.new(schedule_params)
    @schedule.shiori_id = @shiori.id
    @schedule.save
    redirect_to shiori_path(@shiori)
  end

  def edit
    @shiori = Shiori.find(params[:shiori_id])
    @schedule = Schedule.find(params[:id])
  end

  def update
    @shiori = Shiori.find(params[:shiori_id])
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to shiori_path(@shiori)
    else
      render "edit"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def schedule_params
    params.require(:schedule).permit(:year, :month, :day, :plan, :shiori_id, :time)
  end
end
