Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :articles
 
  root 'welcome#index'

  get 'items/index'

  resources :items

  resources :articles do
    resources :comments
  end
end