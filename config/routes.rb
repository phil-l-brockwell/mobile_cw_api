Rails.application.routes.draw do

  resources :items
  resources :consultants
  resources :reviews

  namespace :api do
    resources :items
    resources :consultants
    resources :reviews
  end
end
