Rails.application.routes.draw do
  resources :hashtags
  # get 'hashtags/show'
  # get 'hashtags/new'
  # get 'hashtags/edit'
  # get 'hashtags/create'
  # get 'hashtags/update'
  # get 'hashtags/delete'
  resources :post_hashtags
  # get 'post_hashtags/show'
  # get 'post_hashtags/new'
  # get 'post_hashtags/edit'
  # get 'post_hashtags/create'
  # get 'post_hashtags/update'
  # get 'post_hashtags/delete'
  resources :posts
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/edit'
  # get 'posts/create'
  # get 'posts/update'
  # get 'posts/delete'
  resources :users
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'
  # get 'users/create'
  # get 'users/update'
  # get 'users/delete'
  root 'sessions#new'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
