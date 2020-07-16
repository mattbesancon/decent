Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:index, :show, :create, :new] do
    resources :comments, only: [:create]
  end
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
