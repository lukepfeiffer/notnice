Notnice::Application.routes.draw do
   root 'pages#home'
   get '/notnice', to: 'pages#notnice'
   get '/sign_in', to: 'pages#sign_in'
   post '/sign_up', to: 'pages#sign_up'
end
