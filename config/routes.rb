Rails.application.routes.draw do
  resources :links
  get 'welcome/index'

  root 'welcome#index'
end
