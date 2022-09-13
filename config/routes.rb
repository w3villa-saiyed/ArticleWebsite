Rails.application.routes.draw do
  devise_for :accounts
  
  root "articles#index"
  # get '/articles', to: "articles#index"

  # get "/articles/:id", to: "articles#show"
  get '/article/:id/like', to: 'articles#like', as: 'like'

  resources :categories
  resources :articles do
    resources :comments
  end

end

