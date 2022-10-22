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
end
