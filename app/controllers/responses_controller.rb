class ResponsesController < ApplicationController
  before_action :authenticate_user

  def index
    responses = Response.where(user_id: current_user.id)
    render json: responses.as_json
  end

  def create
    response = Response.new(
      checklist_id: params[:checklist_id],
      user_id: current_user.id,
      prepared: params[:prepared],
    )
    if response.save
      render json: response.as_json
    else
      render json: { errors: response.errors.full_messages }, status: 422
    end
  end

  def update
    response = Response.find_by(id: params[:id])
    response.prepared = params[:prepared] # || response.prepared

    if response.save
      render json: response.as_json
    else
      render json: { errors: response.errors.full_messages }, status: 422
    end
  end
end
