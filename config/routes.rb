Rails.application.routes.draw do
  get 'welcome/index'
  resources :users
  resources :jobs
  root 'welcome#index'
end
