Rails.application.routes.draw do
  resources :restaurants do
    collection do
      # GET /restaurants/top
      get :top
    end
    member do
      # GET /restaurants/42/chef
      get :chef
    end
    resources :reviews, only: [:new, :create]
  end
  # GET /best-restaurant
  get 'best-restaurant', to: 'restaurants#best'
  root to: 'restaurants#index'
end
