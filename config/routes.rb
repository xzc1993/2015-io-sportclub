Rails.application.routes.draw do

  get 'calendar/index'

  resources :courses do
    resources :course_events, path: 'events' do
      resources :course_days, path: 'days'
    end
  end

  resources :items
  resources :events
  root 'events#index'

  get 'sessions/new'

  resources :users
  resources :session

get 'calendar', to: 'calendar#show'


end
