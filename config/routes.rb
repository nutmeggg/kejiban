Rails.application.routes.draw do
  get '/index' => 'home#index' 
  get '/write' => 'home#write'
  post '/create' => 'home#create'

  get '/modify/:post_id' => 'home#modify'
  post '/update/:post_id' => 'home#update'
  get '/delete/:post_id' => 'home#delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
