Rails.application.routes.draw do
  
 namespace :api do 
   namespace :v1 do
     get '/users', to: 'users#index'
     get '/users/:id', to: 'users#show'
     post '/adduser', to: 'users#create'
     delete '/deleteuser/:id', to: 'users#destroy'
     patch '/updateuser/:id', to: 'users#update'

     # Doctor Routes 

     get '/doctors', to: 'doctors#index'
     get '/doctors/:id', to: 'doctors#show'
     get '/doctors/add-doctor', to: 'doctors#create'
     get '/doctors/deletedoctor/:id', to: 'doctors#destory'
     get '/doctors/updatedoctor/:id', to: 'doctors#update'
    end
 end



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
