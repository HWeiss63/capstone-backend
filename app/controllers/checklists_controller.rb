class ChecklistsController < ApplicationController
  def index
    checklists = Checklist.all
    render json: checklists.as_json
  end
end
