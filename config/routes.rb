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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
