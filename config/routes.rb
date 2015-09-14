# This file defines all the routes
Rails.application.routes.draw do

  # Makes all routes available for admins, items, consultants and reviews
  devise_for :admins
  resources :items
  resources :consultants
  resources :reviews

  # Sets up namespacing for the API routes, eg api/item as opposed to /item
  namespace :api do
    resources :items
    resources :consultants
    resources :reviews
  end

  # Sets default view to /pages
  root 'pages#index'
end
