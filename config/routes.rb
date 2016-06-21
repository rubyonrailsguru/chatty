Rails.application.routes.draw do

 resources :likes

  resources :projects

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  authenticated :user do
    root 'users#index'
    get '/compose' => 'users#compose'

  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end

  resources :conversations do
    resources :messages
  end
  resources :user_emails

end
