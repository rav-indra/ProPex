Rails.application.routes.draw do
  get 'home/guest'
  get 'dashboard/index'
  
  resources :checkout, only: [:create]
  post "checkout/create", to: "checkout#create",  as: "checkout_create"
  resources :properties
  devise_for :users
  root 'public#main'
  resources :users

  get '/search', to: 'properties#search'

  # Defines the root path route ("/")
  # root "articles#index"
end
