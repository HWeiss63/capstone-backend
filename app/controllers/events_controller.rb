class EventsController < ApplicationController
  def index
    events = Event.all
    render json: events.as_json
  end

  def create
    event = Event.new(
      title: params[:title],
      start: params[:start],
      end: params[:end],
      location: params[:location],
      memo: params[:memo],
      user_id: params[:user_id],
    )
    event.save
    render json: event.as_json
  end

  def show
    event = Event.find_by(id: params[:id])
    render json: event.as_json
  end

  def update
    event = Event.find_by(id: params[:id])
    event.title = params[:title] || event.title
    event.start = params[:start] || event.start
    event.end = params[:end] || event.end
    event.location = params[:location] || event.location
    event.memo = params[:memo] || event.memo
    event.user_id = params[:user_id] || event.user_id
    event.save
    render json: event.as_json
  end

  def destroy
    event = Event.find_by(id: params[:id])
    event.destroy
    render json: { message: "Event successfully destroyed." }
  end
end
