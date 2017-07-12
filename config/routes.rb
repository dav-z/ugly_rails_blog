Rails.application.routes.draw do
  root 'home#index'
  get '/signin' => 'signin#index'
  post '/login' => 'signin#login'
  post '/logout' => 'session#logout'

  resources :comments
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
