Rails.application.routes.draw do
  resources :sessions
  resources :hero_seekers
  resources :seekers
  resources :heros
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
end
