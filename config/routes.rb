Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#login'
      get '/profile', to: 'users#profile'
      post '/users', to: 'users#create'
      get '/users', to: 'users#index'
      patch '/users/:id', to: 'users#update'
    end
  end
end
