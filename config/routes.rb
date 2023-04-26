Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/products', to: 'product#index', as: 'storefront'
  get '/products/:id/buy', to: 'product#add_to_cart', as: 'add_to_cart'
  get '/products/cart', to: 'product#view_cart', as: 'view_cart'
  get '/products/checkout', to: 'product#checkout', as: 'checkout'
  get '/prodcts/api', to: 'product#api'

  # Defines the root path route ("/")
  root "product#index"
  get '/about', to: 'home#about'
  get '/blog', to: 'home#blog'
  post '/poll', to: 'home#poll'
  post '/blog', to: 'home#create_blog'
  post '/', to: 'home#create_products'
  
  get '/products/api', to: 'product#api'


end