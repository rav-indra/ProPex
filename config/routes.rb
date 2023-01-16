Rails.application.routes.draw do

  mount StripeEvent::Engine, at: '/webhooks'
  
  get 'home/guest'
  get 'dashboard/index'
  
  
  post "webhooks/create", to: "webhooks#create"
  post "checkouts/create", to: "checkouts#create"
  resources :properties
  devise_for :users
  root 'public#main'
  resources :users

  get '/search', to: 'properties#search'

end
