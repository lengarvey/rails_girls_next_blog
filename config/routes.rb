Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'posts#index'

  resources :posts do
    resources :comments, only: [:create]
  end
end
