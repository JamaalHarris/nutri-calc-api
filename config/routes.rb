Rails.application.routes.draw do
  # Signup
  post "/users" => "users#create"

  # Login
  post "/sessions" => "sessions#create"

  # Lookup

  # Favorites
  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  get "/favorites/:id" => "favorites#show"
  patch "/favorites/:id" => "favorites#update"
end
