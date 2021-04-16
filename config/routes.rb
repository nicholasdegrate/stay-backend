Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reviews
      resources :properties
      resources :availabilities
      resources :hosts
    end
  end
end
