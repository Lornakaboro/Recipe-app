Rails.application.routes.draw do
  resources :recipe_foods, only: [:new, :create, :edit, :update, :destroy]
  get 'public_recipes/index'
  resources :foods
  resources :recipes
  devise_for :users
  resources :users, only: [:index, :show]
  root to: "users#index"
end
