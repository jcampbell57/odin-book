Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  devise_for :users

  root 'posts#index'

  resources :posts, only: %i[index new create]
end
