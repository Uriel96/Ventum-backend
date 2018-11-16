Rails.application.routes.draw do
  resources :tags
  resources :registers
  resources :events
  resources :reservations
  resources :employees
  resources :students
  resources :areas
  resources :places
  resources :student_groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
