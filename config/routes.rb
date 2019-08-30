Rails.application.routes.draw do

  devise_for :users

  # authenticated :user do
  #   root 'users#show'
  # end

  root 'top#index'

  resources :users, only:[:show]
end
