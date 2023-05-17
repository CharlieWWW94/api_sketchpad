Rails.application.routes.draw do
  resources :pads
  resources :frames
  resources :registrations, only: [:create, :destroy]
  resources :sessions, only: [:create, :destroy]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
