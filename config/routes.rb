Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :links do
    member do
      put "upvote",   to:"links#upvote"
      put "downvote", to:"links#downvote"
    end
    resources :comments
  end
  root to:"links#index"

end
