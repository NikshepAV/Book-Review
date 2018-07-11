Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  resources :users, :only => [:show]
  resources :books do
    resources :reviews
  end
  root "books#index"
end
