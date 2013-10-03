Crowdfunder::Application.routes.draw do

 

  # get "sessions/new"
  # get "sessions/create"
  # get "sessions/destroy"

  root :to => 'welcome#index'

# resources :sessions, only: [:new, :create, :destroy]

# delete "logout" => "sessions#destroy", as: "logout"

# get "login" => "sessions#new", as: "login"
  resources :sessions, :only => [:new, :create, :destroy]
  resources :projects
  resources :users, :except => [:index]
end 
