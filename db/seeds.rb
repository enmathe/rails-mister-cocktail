# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.destroy_all

Cocktail.create(name: "El Amentador", image: "https://images.unsplash.com/photo-1514361892635-6b07e31e75f9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1babec6c62cca17f98a64f8785d3efba&auto=format&fit=crop&w=1050&q=80")
Cocktail.create(name: "El Bombonero", image: "https://images.unsplash.com/photo-1470338745628-171cf53de3a8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b021b2cbe86640f8b50c8b24bc03b576&auto=format&fit=crop&w=634&q=80")
Cocktail.create(name: "La Brescia", image: "https://images.unsplash.com/photo-1517644493876-7864565e3bf9?ixlib=rb-0.3.5&s=4d17e8794a83555fe98ae7f1a28e3bde&auto=format&fit=crop&w=634&q=80")
Cocktail.create(name: "La Lemontada", image: "https://images.unsplash.com/photo-1531387367216-681093c0279b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=73ca72de11ae9cd2fa7367dc1ee76705&auto=format&fit=crop&w=1316&q=80")
Cocktail.create(name: "El Figuiso", image: "https://images.unsplash.com/photo-1514361726087-38371321b5cd?ixlib=rb-0.3.5&s=187854b8055667391ffae62b28659251&auto=format&fit=crop&w=1350&q=80")
Cocktail.create(name: "La Tramontane", image: "https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6b1d319c9d079085df12025ac37e9e1e&auto=format&fit=crop&w=1350&q=80")
