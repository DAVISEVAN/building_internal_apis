Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books, only: [:index, :show, :create, :update, :destroy]
    end
    namespace :v2 do
      resources :books, only: [:index]
    end
  end
end