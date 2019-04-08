Rails.application.routes.draw do
  resources :txdotstreets
  resources :txdotlights
  resources :genericcallouts
  resources :citystreets
  resources :watersewers
  resources :animalcontrols
  resources :cchlogs
  resources :daysoffrequests
  resources :ithelptickets
  resources :fleettickets
  resources :radionumbers
  resources :vacationpatrols
  resources :sexoffenders
  resources :phonenumbers
  resources :gatecodes
  resources :rollcalls
  resources :sessions
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
  get '/dailydispatch' => 'dailydispatch#index.html.erb'
  root 'dashboard#index'

end
