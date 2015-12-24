class EventsController < ApplicationController
  
  def index
    @events = Event.all
  end 

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(strong_params)
    redirect_to events_path
  end

  private

  def strong_params
    params.require(:event).permit(:age_range, :length, :style, :gender)
  end
end