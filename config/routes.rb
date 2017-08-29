Rails.application.routes.draw do
  root to: 'calendar#index'

  resources :calendar, only: [:index, :create]
end
