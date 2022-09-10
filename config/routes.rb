Rails.application.routes.draw do
  devise_for :accounts
  
  root "articles#index"
  # get '/articles', to: "articles#index"

  # get "/articles/:id", to: "articles#show"
  resources :categories
  resources :articles do
    resources :comments
  end

end
