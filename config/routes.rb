Rails.application.routes.draw do
  devise_for :users
  root 'words#index'
  resources :words
  resources :users, only: [:show, :edit, :update]
end
