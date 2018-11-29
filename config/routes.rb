Rails.application.routes.draw do
  resources :student_groups
  #devise_for :users
  resources :registers
  resources :events
  resources :reservations
  resources :employees
  resources :students
  resources :areas
  resources :places
  resources :sessions
  resources :users
 # get 'users', to:'users#index'
  #get 'users/:id', to:'users#show'
  
  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  get 'test', to: 'users#test'
  put 'auth/logout', to: 'users#logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
