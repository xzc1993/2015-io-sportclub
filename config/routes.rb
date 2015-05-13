Rails.application.routes.draw do

  resources :courses do
    resources :course_days
  end

  resources :items
  resources :events
  root 'events#index'
end
