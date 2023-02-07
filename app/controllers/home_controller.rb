class HomeController < ApplicationController

    def index
        @name = "Michael Wakeham"
        @myproducts = 
        [
            {
                img: 'ps5.jpg',
                name: 'Playstation 5',
                description: 'Hard to find. Snap one up while you can. Totally legit.',
                price: '$499.99',
                quantity: 'Just 1'
            },

            {
                img: 'puppy.jpg',
                name: 'Puppy',
                description: 'Cute. Fun. Loving. Fill that void in your life.',
                price: '$3500.00',
                quantity: '8 male, 5 female'
            },

            {
                img: 'orangepeanut.jpg',
                name: 'Orange Peanut',
                description: 'An orange peanut? For me? Well, I accept you.',
                price: '$1.99',
                quantity: '50ish'
            },

            {
                img: 'crazyfrog.jpg',
                name: 'Crazy Frog',
                description: 'Stuck in my head. Music is too catchy.',
                price: '$10.00',
                quantity: '2'
            }
        ]
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
    end
end
