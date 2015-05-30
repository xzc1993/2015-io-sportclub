Rails.application.routes.draw do

  get 'groups/index'

  get 'groups/new'

  get 'groups/create'

  get 'groups/destroy'

  get 'groups/show'

  get 'groups/edit'

  get 'groups/update'

  get 'calendar/index'

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
  resources :groups
  resources :session

get 'calendar', to: 'calendar#show'


end
