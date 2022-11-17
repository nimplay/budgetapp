Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[index show new create edit update destroy]
  resources :home
  resources :groups
     
  resources :expenses, only: %i[index show new create edit update destroy]
  resources :incomes, only: %i[index show new create edit update destroy]
  resources :transactions, only: %i[index show new create edit update destroy]
  root 'users#welcome'
end
