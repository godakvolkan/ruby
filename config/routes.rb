Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Hello endpoint (ödev gereği)
      get 'hello', to: 'hello#index'
      
      # CRUD işlemleri
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      resources :tags, only: [:index, :show, :create, :update, :destroy]
      
      resources :posts do
        resources :comments, only: [:index, :create, :destroy]
      end
    end
  end
end
