Rails.application.routes.draw do
  # Signup
  post "/users" => "users#create"
  get "/users" => "users#index"
  get "/users/:id" => "users#show"

  # Login
  post "/sessions" => "sessions#create"

  # Favorites
  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  get "/favorites/:id" => "favorites#show"
  patch "/favorites/:id" => "favorites#update"
  delete "/favorites/:id" => "favorites#destroy"

  # API
  post "/api" => "api#index"
end
