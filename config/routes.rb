Rails.application.routes.draw do

  root "welcome#index"
  resources :comments
  resources :home, only: [:index]

  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
  }

  resources :categories, only: [:show]
  resources :products, only: [:index, :show] do
    member do
      put "like", to: "products#upvote"
    end
    get :search, on: :collection
    resources :comments
  end
  resources :shopping_carts


  resources :addresses do
    member do
      put :set_default_address
    end
  end
  resources :orders
  resources :payments, only: [:index]

  namespace :dashboard do
    resources :profile
    resources :orders, only: [:index]
    resources :addresses, only: [:index]
  end

  namespace :admin do
    root 'sessions#new'
    resources :sessions
    resources :categories
    resources :products  do
      resources :photos, only: [:index, :create, :update, :destroy]
    end
  end
end
