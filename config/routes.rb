Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :users
  resources :links do
    member do
      put "upvote",   to:"links#upvote"
      put "downvote", to:"links#downvote"
    end
    resources :comments
  end
  root to:"links#index"
  get "load_links/:page_no", to: "links#load", as: "load_links"

end
