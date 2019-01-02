Rails.application.routes.draw do
  resources :sexoffenders
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get "/pages/:page" => "pages#show"

  resources :users
  get 'dashboard/index'
  resources :phonenumbers
  resources :gatecodes
  resources :rollcalls
  resources :sessions

  root 'dashboard#index'

end
