Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :movies

    root to: "users#index"
  end

  root to: 'movies#index'
  devise_for :users
  resources :movies
end
