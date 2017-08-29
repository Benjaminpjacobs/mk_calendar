Rails.application.routes.draw do
  root to: 'calendar#index'

  resources :calendar, only: [:index, :create]

  namespace :api do
    namespace :v1 do
      resources :events, only: [:index]
    end
  end
end
