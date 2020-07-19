class SchedulesController < ApplicationController
  def index
    @shiori = Shiori.find(params[:shiori_id])
    @schedule = Schedule.new
    @schedules = Schedule.where(shiori_id: @shiori.id)
  end

  def create
    @shiori = Shiori.find(params[:shiori_id])
    @schedule = Schedule.new(schedule_params)
    @schedule.shiori_id = @shiori.id
    @schedule.save
    redirect_to shiori_schedules_path(@shiori)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def schedule_params
    params.require(:schedule).permit(:year, :month, :day, :plan, :shiori_id, :time)
  end
end
