Rails.application.routes.draw do
  root "home#index"
  # Game Route
  get "game", to: "home#game"
  # Auth Route
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :users, only: [ :new, :create ]
end
