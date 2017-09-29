Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :musicapp

  get "/sessions/new" => "sessions#new", as: :new_session
  post "/sessions" => "sessions#create", as: :sign_in
  get "/sessions/main" => "sessions#main", as: :main
  delete "/sessions" => "sessions#destroy", as: :logout


  root to: "sessions#main"


end
