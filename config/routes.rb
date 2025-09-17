Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  root to: "homes#top"
  devise_for :users

  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
  get "homes/about", to: "homes#about", as: "about"
end