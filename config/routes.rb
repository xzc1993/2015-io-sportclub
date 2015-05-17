Rails.application.routes.draw do

  resources :courses do
    resources :course_days
  end

  resources :items
  resources :events do
  	resources :event_days
  end
  
  root 'events#index'

  get 'sessions/new'

  resources :user
  resources :session

end
