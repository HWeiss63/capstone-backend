class Checklist < ApplicationRecord
  has_many :responses

  # def current_user_responses
  #   Response.find_by(checklist_id: id, user_id: current_user.id)
  # end
end
