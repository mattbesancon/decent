Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:index, :show, :create, :new, :update, :destroy] do
    member do
      get :flop
    end
    resources :comments, only: [:create, :destroy]
  end
end
