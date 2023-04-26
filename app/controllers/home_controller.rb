class HomeController < ApplicationController

skip_before_action :verify_authenticity_token

    def index
        @name = "Michael Wakeham"
        @myproducts = Index.all
    end

    def about
        @name = "Michael Wakeham"
        @myteam = 
        [
            {
                img: 'washington.jpg',
                name: 'George Washington',
                description: 'Human Resources. Shows flashes of leadership potential.',
            },

            {
                img: 'morganfreeman.jpg',
                name: 'Morgan Freeman',
                description: 'Creative Director and Head of Advertising',
            },

            {
                img: 'kevinhart.jpg',
                name: 'Kevin Hart',
                description: 'Morale and Comedic Relief',
            },
        ]
    end

    def blog
        @name = "Michael Wakeham"
        @blogpost = Blog.all
    end

    def poll
        @title = params[:title]
        @content = params[:body]
    end

    def create_blog
        newpost = Blog.new(
            title: params[:title],
            body: params[:body])
        newpost.save
        redirect_to '/blog'
    end
        
    def create_products
        newproduct = Index.new(
            img: params[:img],
            name: params[:name],
            description: params[:description],
            price: params[:price],
            quantity: params[:quantity])
        newproduct.save
        redirect_to '/'
    end
end

def api
    @products = Index.all
    render json: @products and return
end