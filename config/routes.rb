Rails.application.routes.draw do

  resources :orders
  resources :line_items
  resources :carts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :goods


  root 'static_pages#index'
  get  '/index', to: 'static_pages#index'
  get  '/admin', to: 'static_pages#admin'
  get  '/order', to: 'static_pages#order'
  get  '/detail', to: 'static_pages#detail'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end


end
