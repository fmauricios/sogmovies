Rails.application.routes.draw do

  # Admin Routes

  namespace :admin do
    resources :users
    resources :movies
    resources :genres
    resources :directors
    resources :actors
    resources :movie_types

    root to: "users#index"
  end

  ## Application routes

  root to: 'movies#index'
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :movies do
    member do
      put "favorite", to: "movies#upvote"
      put "unfavorite", to: "movies#downvote"
    end
  end

  resources :users, only: [:show]
  resources :actors, only: [:show]
  resources :directors, only: [:show]

  get 'series', to: 'movie_types#series'
  get 'show_movies', to: 'movie_types#movies'
  get 'animes', to: 'movie_types#animes'
  #
  # resources :movie_types, only: [:index]

end
