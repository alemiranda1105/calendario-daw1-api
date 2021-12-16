Rails.application.routes.draw do
  root 'homepage#index'
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
      resources :sessions, only: [:index, :create, :destroy]
      post 'users/login', to: 'users#login'
      resources :groups, only: [:index, :show]
    end
  end
end
