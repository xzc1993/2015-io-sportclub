Rails.application.routes.draw do

  resources :courses do
    resources :course_events, path: 'events' do
      resources :course_days, path: 'days'
    end
  end

  resources :items
  resources :events do
  	resources :event_days
  end
  
  root 'events#index'

  get 'sessions/new'

  resources :users
  get 'users/:id/verify', to: 'users#verify', as: 'verify_user'
  resources :groups
  resources :session

get 'calendar', to: 'calendar#show'


end
