PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  get '/pickacowboy', to: 'sessions#index'

  resources :posts
  resources :users
end
