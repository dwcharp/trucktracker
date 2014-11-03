Rails.application.routes.draw do
 
  get 'log_in' => "logins#new" , :as => "log_in"
  resources :users, :tasks, :logins
  root 'logins#new'
end
