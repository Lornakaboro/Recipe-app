Rails.application.routes.draw do
  get 'recipe_foods/new'
  get 'recipe_foods/create'
  get 'recipe_foods/edit'
  get 'recipe_foods/destroy'
  resources :foods
  resources :recipes
  resources :public_recipes
  devise_for :users
  resources :users, only: [:index, :show]
  root to: "users#index"
end
