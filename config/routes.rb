Tripstitch::Application.routes.draw do
  resources :trip_destinations


  resources :destinations


  resources :trips


  get "users/new"

  get "users/create"

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "log_out" => "sessions#destroy", :as => "log_out"

  root :to => "users#new"

  resources :users
  resources :sessions
end
