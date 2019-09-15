Rails.application.routes.draw do

  devise_for :users

  # authenticated :user do
  #   root 'users#show'
  # end

  root 'top#index'

  resources :users, only:[:show]

  resources :members, only:[:index, :new, :create, :show, :edit, :update]

  resources :teams, only:[:index, :new, :create, :show, :edit, :update] do
    collection do
      get :search
    end
  end
  
end
