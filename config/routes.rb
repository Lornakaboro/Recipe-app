Rails.application.routes.draw do
  get 'public_recipes/index'
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'recipes/edit'
  get 'recipes/create'
  get 'recipes/update'
  get 'recipes/destroy'
  get 'recipe_foods/new'
  get 'recipe_foods/create'
  get 'recipe_foods/edit'
  get 'recipe_foods/destroy'
  resources :foods
  resources :recipes
  devise_for :users
  resources :users, only: [:index, :show]
  root to: "users#index"
end
