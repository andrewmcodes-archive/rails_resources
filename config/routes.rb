Rails.application.routes.draw do
  resources :resources
  resource :sessions, only: [:create, :destroy]
  resource :dashboard, only: :show
  get "auth/auth0/callback" => "sessions#create"
  get "auth/failure" => "sessions#failure"

  root to: "home#show"
end
