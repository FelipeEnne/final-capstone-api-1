# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :items
  resources :favorites
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#show'
  post '/auth/login', to: 'authentication#authenticate'
end
