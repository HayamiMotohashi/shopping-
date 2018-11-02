Rails.application.routes.draw do
  devise_for :users

  root 'static_pages#index'
  get  '/index', to: 'static_pages#index'
  get  '/admin', to: 'static_pages#admin'
  get  '/order', to: 'static_pages#order'
  get  '/cart', to: 'static_pages#cart'
  # get  '', to: 'static_pages#cart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
