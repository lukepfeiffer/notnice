Notnice::Application.routes.draw do
   resources :users
   root 'pages#home'

   post '/log_in', to: 'pages#log_in'
   post '/sign_in', to: 'sessions#create'

   get '/log_in', to: 'pages#log_in'
   get '/notnice', to: 'pages#notnice'
   get '/upload_video', to: 'pages#upload_video'

   delete '/log_out', to: 'sessions#destroy'
end
