Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
  }

  resources :categories, only: [:show]
  resources :products, only: [:show]
  resources :shopping_carts do
    collection do
      delete :clean
    end 
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
