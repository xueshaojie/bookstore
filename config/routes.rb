Rails.application.routes.draw do
  root 'welocme#index'

  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
  }
end
