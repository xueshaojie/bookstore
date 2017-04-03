Rails.application.routes.draw do
  root 'welocme#index'

  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
  }


  namespace :admin do
    root 'sessions#new'
    resources :sessions
    resources :categories
    resources :products  do
      resources :photos, only: [:index, :create, :update, :destroy]
    end
  end
end
