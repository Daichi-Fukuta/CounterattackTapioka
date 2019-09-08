Rails.application.routes.draw do
  # get "/users/new", to: "users#new"
  # post "/users/create", to: "users#create"
  resources :users, only: [:index, :new, :create]
  
  root "users#index"
end
