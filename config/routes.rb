Rails.application.routes.draw do
  resources :foods
  devise_for :users
  resources :users, only: [:index, :show]
  root to: "users#index"
end
