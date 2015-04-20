Rails.application.routes.draw do
  get 'sessions/new'

  resources :user
  resources :session

end
