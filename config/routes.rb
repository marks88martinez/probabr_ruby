Rails.application.routes.draw do
  devise_for :users
  resources :purchases
  resources :users

  root 'purchases#index'
  get "*path", to: redirect('/')
end
