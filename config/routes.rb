Rails.application.routes.draw do
  resource :sessions, only: [:create, :destroy]
  resource :dashboard, only: :show
  get "auth/auth0/callback" => "sessions#create"
  get "auth/failure" => "sessions#failure"

  root to: "home#show"
end
