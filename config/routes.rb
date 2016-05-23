Rails.application.routes.draw do

  # Admin Routes

  namespace :admin do
    resources :users
    resources :movies
    resources :genres
    resources :directors
    resources :actors
  
    root to: "users#index"
  end

  ## Routes for the application

  root to: 'movies#index'
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :movies do
    member do
      put "favorite", to: "movies#upvote"
      put "unfavorite", to: "movies#downvote"
    end
  end
  resources :users, only: [:show]
end
