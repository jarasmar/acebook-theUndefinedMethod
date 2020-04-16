# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/posts')
  resources :comments
  resources :posts
  get "/post/like_post/:post_id" => "likes#save_like", as: :like_post
  resources :like_comments, only: [:create]
end
