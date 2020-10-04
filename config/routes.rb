Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:index, :show, :create, :new, :edit, :update, :destroy] do
    member do
      get :flop
    end
    resources :comments, only: [:create]
  end
end
