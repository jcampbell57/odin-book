Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  devise_for :users

  root 'posts#index'

  resources :users, only: %i[index show] do
    resources :friendships, only: %i[create]
    collection do
      get 'accept_friend'
      get 'decline_friend'
    end
  end

  put '/users/:id', to: 'users#update_img'

  resources :posts, only: %i[index new create show destroy] do
    resources :likes, only: %i[create]
  end

  resources :comments, only: %i[new create destroy] do
    resources :likes, only: %i[create]
  end
end
