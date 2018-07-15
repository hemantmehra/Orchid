Rails.application.routes.draw do
  devise_for :users
  resources :links do
    member do
      put "upvote",   to:"links#upvote"
      put "downvote", to:"links#downvote"
    end
  end
  root to:"links#index"

end
