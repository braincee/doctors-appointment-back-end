Rails.application.routes.draw do
 namespace :api do 
   namespace :v1 do
     get '/users', to: 'users#index'
     post '/user/name', to: 'users#show'
     post '/user/add', to: 'users#create'
     delete '/user/delete/id', to: 'users#destroy'
     patch '/user/update/id', to: 'users#update'

     # Doctor Routes 

      get '/doctors', to: 'doctors#index' do
      get :image, on::member
     end 
     get '/doctors/id', to: 'doctors#show' do
       get :image, on::member
     end
     post '/doctor/add', to: 'doctors#create'
     delete '/doctor/delete/id', to: 'doctors#destroy'
     patch '/doctor/update/id', to: 'doctors#update'

    # appointment routes
    
     get '/appointments', to: 'appointments#index'
     post '/appointments/id', to: 'appointments#show'
     post '/appointment/add', to: 'appointments#create'
     patch '/appointment/update/id', to: 'appointments#update'
     delete  '/appointment/id', to: 'appointments#destroy'
    end
  end
end 