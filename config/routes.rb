Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :goods
  resources :carts, only: [:show]

  root 'static_pages#index'
  get  '/index', to: 'static_pages#index'
  get  '/admin', to: 'static_pages#admin'
  get  '/order', to: 'static_pages#order'
  # get  '/cart', to: 'static_pages#cart'
  get  '/detail', to: 'static_pages#detail'

  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'


end
