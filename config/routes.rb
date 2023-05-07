Rails.application.routes.draw do
  # Signup
  post "/users" => "users#create"

  # Login
  post "/sessions" => "sessions#create"

  # Lookup

  # Favorites
  get "/favorites" => "favorites#index"
end
