Rails.application.routes.draw do
  get 'friendships/create'
  get 'likes/create'
  get 'comments/new'
  get 'comments/create'
  devise_for :users

  root 'posts#index'

  resources :posts, only: %i[index new create]
end
