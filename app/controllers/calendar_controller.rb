class CalendarController < ApplicationController
  def index
    @events = Event.all
  end
  
  def create
    events = JSON.parse(event_params)
    events.each do |event|
      Event.create(event)
    end
    redirect_to root_path
  end

  def event_params
    params.permit(:events).require(:events)
  end
end