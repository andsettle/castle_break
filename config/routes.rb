Rails.application.routes.draw do
  root "home#index"
  # Game Route
  get "game", to: "home#game"
  # Auth Route
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  # Signup route
  get "signup", to: "users#new"
  post "signup", to: "users#create"
  # Logout route
  get "logout", to: "sessions#destroy"
  resources :users, only: [ :new, :create ]
end
