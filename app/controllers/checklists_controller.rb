class ChecklistsController < ApplicationController
  def index
    checklists = Checklist.all
    data = []
    checklists.each do |checklist|
      item = {}
      answer = Response.find_by(checklist_id: checklist.id, user_id: current_user.id)
      item["checklist"] = checklist
      item["answer"] = (answer && answer["prepared"]) ? answer["prepared"] : false
      data << item
    end
    render json: data.as_json
  end

  def create
    p params[:body]
  end

  # def index
  #   checklists = Checklist.all
  #   answers = []
  #   checklists.each do |checklist|
  #     answer = Response.find_by(checklist_id: checklist.id, user_id: current_user.id)
  #     if answer
  #       answers << answer
  #     end
  #   end
  #   render json: { checklists: checklists, answers: answers }
  #   # render json: checklists.as_json
  # end
end
