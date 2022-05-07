require 'sidekiq/web'

Rails.application.routes.draw do
  resources :uploads do
    member do
      delete :delete_file
      post :shortern_url
    end
  end
  get '/tiny/:short_id', to: 'links#show'
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
authenticate :user, lambda { |u| u.admin? } do
  mount Sidekiq::Web => '/sidekiq'

  namespace :madmin do
    resources :impersonates do
      post :impersonate, on: :member
      post :stop_impersonating, on: :collection
    end
  end
end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'uploads#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
