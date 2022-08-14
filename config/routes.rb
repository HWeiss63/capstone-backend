Rails.application.routes.draw do
  # users
  post "/users" => "users#create"

  # events
  get "/events" => "events#index"
  post "/events" => "events#create"
  get "/events/:id" => "events#show"
  patch "/events/:id" => "events#update"
  delete "/events/:id" => "events#destroy"

  # checklists
  get "/checklists" => "checklists#index"
end
