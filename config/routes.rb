Rails.application.routes.draw do
  # get 'home/index'
  root to: 'home#index'
  resources :images
  resources :albums
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
