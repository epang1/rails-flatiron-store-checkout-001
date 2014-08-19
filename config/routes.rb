Rails.application.routes.draw do

  root 'store#index', as: 'store'

  resources :items, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :carts
  resources :line_items, only: [:create]
  resources :orders, only: [:show, :new, :create]
  
end