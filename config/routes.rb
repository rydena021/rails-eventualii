Rails.application.routes.draw do
  devise_for :users

  resources :lists do
    resources :items do
      member do
        patch :complete
      end
    end
  end
  get '/demo', to: 'pages#demo', as: 'demo'
  root to: 'pages#home'
end
