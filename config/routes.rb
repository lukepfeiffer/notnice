Notnice::Application.routes.draw do
   resources 'users'
   root 'pages#home'
   get '/notnice', to: 'pages#notnice'
   post '/log_in', to: 'pages#log_in'
   get '/log_in', to: 'pages#log_in'
   delete '/log_out', to: 'sessions#destroy'
end
