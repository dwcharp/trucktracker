Rails.application.routes.draw do
 
  get 'welcome/index'

  resources :users, :tasks
  root 'welcome#index'
end
