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

  # def create
  #   p "this is a test"
  #   params.except(:controller, :action, :checklist).each do |key, value|
  #     p "-----"
  #     p key
  #     value.each do |item|
  #       p "#######"
  #       p item["checklist"]["id"]
  #       p current_user.id
  #       p item["answer"]
  #     end
  #     #p key
  #   end #[1]["checklist"]["id"]
  # end

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
