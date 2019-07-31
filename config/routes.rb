Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post '/login', to: 'authentication#create'
      post '/signup', to: 'users#create'
      get '/profile', to: 'users#profile'
      get '/categories/:name', to: 'categories#show'
      resources :users
      resources :cart_items
      resources :items
      resources :shelves
      resources :categories
      resources :carts
    end
  end
  # get '/*a', to: 'application#not_found'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
