Rails.application.routes.draw do
  root "posts#index"
  resources :users do
    resources :posts
    resources :comments
  end
  resources :posts do
    resources :comments
  end
end
