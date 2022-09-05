class ResponsesController < ApplicationController
  before_action :authenticate_user

  def index
    responses = Response.all
    render json: responses.as_json
  end

  def create
    data = params[:data]
    data.each do |category, values|
      values.each do |item|
        answer = Response.find_by(user_id: current_user.id, checklist_id: item["checklist"]["id"])
        if answer
          answer.prepared = item["answer"]
        else
          answer = Response.new(
            prepared: item["answer"],
            checklist_id: item["checklist"]["id"],
            user_id: current_user.id,
          )
        end
        answer.save
        # pp item
      end
    end
    render json: { message: "updated" }
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
