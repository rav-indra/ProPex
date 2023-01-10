Rails.application.routes.draw do
  get 'dashboard/index'

  resources :properties
  devise_for :users
  root 'public#main'
  resources :users

  get '/search', to: 'properties#search'

  # Defines the root path route ("/")
  # root "articles#index"
end
