Rails.application.routes.draw do
 namespace :api do 
   namespace :v1 do
     get '/users', to: 'users#index'
     get '/user/name', to: 'users#show'
     post '/user/add', to: 'users#create'
     delete '/user/:id', to: 'users#destroy'
     patch '/user/:id', to: 'users#update'

     # Doctor Routes 

      get '/doctors', to: 'doctors#index' do
      get :image, on::member
     end 
     get '/doctors/:id', to: 'doctors#show' do
       get :image, on::member
     end
     post '/doctors', to: 'doctors#create'
     delete '/doctors/:id', to: 'doctors#destroy'
     patch '/doctors/update/:id', to: 'doctors#update'

    # appointment routes
    
     get '/appointments', to: 'appointments#index'
     post '/appointments/:id', to: 'appointments#show'
     post '/appointment/add', to: 'appointments#create'
     patch '/appointment/:id', to: 'appointments#update'
     delete  '/appointment/:id', to: 'appointments#destroy'
    end
  end
end 