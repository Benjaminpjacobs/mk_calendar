class Api::V1::EventsController < ActionController::API
  def index
    @events = Event.all
    render json: @events
  end
end