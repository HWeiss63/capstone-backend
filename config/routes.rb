Rails.application.routes.draw do
  # users
  post "/users" => "users#create"

  # sessions
  post "/sessions" => "sessions#create"

  # events
  get "/events" => "events#index"
  post "/events" => "events#create"
  get "/events/:id" => "events#show"
  patch "/events/:id" => "events#update"
  delete "/events/:id" => "events#destroy"

  # checklists
  get "/checklists" => "checklists#index"

  # responses
  get "/responses" => "responses#index"
  post "/responses" => "responses#create"
  patch "/responses/:id" => "responses#update"
end
