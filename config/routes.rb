Rails.application.routes.draw do

  devise_for :admins
  resources :items
  resources :consultants
  resources :reviews

  namespace :api do
    resources :items
    resources :consultants
    resources :reviews
  end

  root 'pages#index'
end
