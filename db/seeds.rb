Index.destroy_all
Index.create(
[
    {
        id: 1,
        img: 'crazyfrog.jpg',
        name: 'Crazy Frog',
        description: 'Annoying, yet catchy.',
        price: 100.00,
        quantity: 1,
    },

    {
        id: 2,
        img: 'orangepeanut.jpg',
        name: 'Orange Peanut',
        description: 'For me? Well, I accept you.',
        price: 50.00,
        quantity: 5,
    },

    {
        id: 3,
        img: 'ps5.jpg',
        name: 'PS5',
        description: 'Fully functional. Totally real.',
        price: 100.00,
        quantity: 100,
    },

    {
        id: 4,
        img: 'puppy.jpg',
        name: 'Puppy',
        description: 'Loving. Fun. Fun-loving. Fill that hole in your heart.',
        price: 1000.00,
        quantity: 3,
    }
])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
