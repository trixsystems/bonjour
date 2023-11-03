# frozen_string_literal: true

Rails.application.routes.draw do
  get '/categories', to: 'categories#index'
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/search', to: 'restaurants#search'
  get '/restaurants/:id', to: 'restaurants#show'
  post '/orders', to: 'orders#create'
  get '/orders/:id', to: 'orders#show'

  # Defines the root path route ("/")
  # root "posts#index"
end
