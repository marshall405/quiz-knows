Rails.application.routes.draw do
  
  get 'welcome/index'
  root 'sessions#index'
  resources :responses
  resources :users
  resources :quizzes, only: [:new, :update, :create, :index, :edit ]
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
