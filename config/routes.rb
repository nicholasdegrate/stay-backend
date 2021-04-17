Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reviews
      resources :properties
      resources :availabilities
      resources :hosts
      post "/login", to: "hosts#login"
      post "/signup", to: "hosts#signup"
      get "/currentuser", to: "hosts#show"
      patch "/currentuser", to: "hosts#update"
    end
  end
end
