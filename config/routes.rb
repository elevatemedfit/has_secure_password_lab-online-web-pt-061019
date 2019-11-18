Rails.application.routes.draw do
  get '/home' => 'sessions#home'

  get '/new' => 'sessions#new'
  post '/create' => 'sessions#create'
  post '/destroy' => 'sessions#destroy'
  get '/show' => 'secrets#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
