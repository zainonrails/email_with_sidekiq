Rails.application.routes.draw do

  resources :posts
  resources :users
  root 'users#index'
end
