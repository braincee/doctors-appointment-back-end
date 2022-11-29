Rails.application.routes.draw do
   namespace :api do 
   namespace :v1 do
     get '/users', to: 'users#index'
     get '/users/:id', to: 'users#show'
     post '/user/add', to: 'users#create'
     delete '/user/delete/:id', to: 'users#destroy'
     patch '/user/update/:id', to: 'users#update'

     # Doctor Routes 
      get '/doctors', to: 'doctors#index' do
      get :image, on::member
     end 
     get '/doctors/:id', to: 'doctors#show' do
       get :image, on::member
     end
     post '/doctor/add', to: 'doctors#create'
     delete '/doctor/delete/:id', to: 'doctors#destroy'
     patch '/doctor/update/:id', to: 'doctors#update'
    # appointment routes
     get '/appointments', to: 'appointments#index'
     get '/appointments/:id', to: 'appointments#show'
     post '/appointment/add', to: 'appointments#create'
     patch '/appointment/update/:id', to: 'appointments#update'
     delete  '/appointment/delete/:id', to: 'appointments#destroy'
    end
end



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
