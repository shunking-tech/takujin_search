Rails.application.routes.draw do

  devise_for :users

  root 'top#index'

  resources :users, only:[:show]

  resources :members, only:[:index, :new, :create, :show, :edit, :update] do
    collection do
      get :search
    end
  end

  resources :teams, only:[:index, :new, :create, :show, :edit, :update] do
    collection do
      get :search
    end
  end
  
end
