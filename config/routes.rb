Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get '/about', to: 'home#about'
  get '/blog', to: 'home#blog'
  post '/poll', to: 'home#poll'
  post '/blog', to: 'home#create_blog'
  post '/', to: 'home#create_products'


end