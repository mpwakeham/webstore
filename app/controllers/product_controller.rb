class ProductController < ApplicationController
  # make sure the cart cookie is initialized
  before_action :initialize_cart

  # GET /products
  def index
    # the front page of the store
    @myproducts = Index.all
  end

  def api
    @myproducts = Index.all
    render json: @myproducts and return
  end

  # POST /products/:id/buy
  def add_to_cart
    # add the selected item to the cart cookie
    session[:cart][params[:id]]+=1
    @item_count += 1
    puts session[:cart]
    flash[:notice] = "item added to cart"
    redirect_to storefront_url
  end

  # GET /products/cart
  def view_cart
    # show the shopping cart
    @items = @cart
      .filter{|id,count| count>0}
      .map{|id,count| [Index.find(id),count]}
  end

  # GET /products/checkout
  def checkout
    # this action should process the order
    # instead we are just clearing the cart :)
    session[:cart] = nil
    # update the quantity remaining
    @cart
      .filter{|id,count| count>0}
      .each do |id,count|
        p = Index.find(id)
        p.quantity = [0,p.quantity-count].max
        p.save
      end
    flash[:notice] = "Your order is on the way!"
    redirect_to storefront_url
  end

  private
  def initialize_cart
    empty_cart = Index.all.map{|p| [p.id.to_s, 0]}.to_h
    session[:cart] ||= empty_cart
    @cart = session[:cart]
    @item_count = @cart.values.reduce(:+)
  end
end
