Rails.application.routes.draw do
  resources :recipe_foods
  get 'recipe_foods/new'
  get 'recipe_foods/create'
  get 'recipe_foods/edit'
  get 'recipe_foods/destroy'
  resources :foods
  resources :recipes
  resources :public_recipes, only: [:index]
  resources :food_recipes
  devise_for :users
  resources :users, only: [:index, :show]
  resources :shopping_list, only: [:index]
  root to: "users#index"
end
