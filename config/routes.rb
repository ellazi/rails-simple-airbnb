Rails.application.routes.draw do
  # Defines the root path route ("/")
  root to: "flats#index"
  resources :flats
end
