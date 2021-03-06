Notnice::Application.routes.draw do
   resources :users
   resources :videos
   resources :comments

   root 'pages#home'

   post '/log_in', to: 'pages#log_in'
   post '/sign_in', to: 'sessions#create'
   post '/comments', to: 'comments#create'

   get '/log_in', to: 'pages#log_in'
   get '/notnice', to: 'pages#notnice'

   delete '/log_out', to: 'sessions#destroy'
end
