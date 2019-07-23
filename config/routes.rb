Rails.application.routes.draw do
  get 'welcome/index'
  resources :users, shallow: true do
    resources :jobs
  end
  resources :jobs, only: [:show, :edit, :update, :destroy]
  root 'welcome#index'
end
