Rails.application.routes.draw do
  resources :courses
  resources :course_days
  resources :items
  resources :events
  root 'events#index'
  



end
