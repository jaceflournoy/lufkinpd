Rails.application.routes.draw do
  resources :phonenumbers
  resources :gatecodes
  resources :rollcalls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "dashboard#index"
end
