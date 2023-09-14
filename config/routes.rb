Rails.application.routes.draw do
  resources :foods
  devise_for :users
  resources :users, only: [:index, :show]
  resources :shopping_list, only: [:index]
  root to: "users#index"
end
