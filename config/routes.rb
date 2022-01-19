Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :follows
  root 'posts#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts
  resources :users

  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"


  resources :posts do
    resources :comments
    resources :upvotes, only: :create
    resources :downvotes, only: :create
  end

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  post '/users/:id/follow', to: "users#follow", as: "followuser"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollowuser"
  
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
