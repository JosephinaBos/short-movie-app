# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Download.destroy_all
WishlistMovie.destroy_all
Movie.destroy_all
Genre.destroy_all

u1 = User.create!(first_name: "Joos", last_name: "Ephina", email: "jo@os.nl", password: "secret", admin: false)
u2 = User.create!(first_name: "Driss", last_name: "Frans", email: "dri@ss.nl", password: "secret", admin: false)
u3 = User.create!(first_name: "Malou", last_name: "Leiuh", email: "ma@lou.nl", password: "secret", admin: true)

m1 = Movie.create!(name: "La Haine", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, exercitationem!", duration: 1, director: "Tres tres beaucoup de plus")
m2 = Movie.create!(name: "The Matrix", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum, adipisci.", duration: 2, director: "Mais non")
m3 = Movie.create!(name: "Intouchables", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, adipisci.", duration: 3, director: "Vive")
m4 = Movie.create!(name: "Lion King", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, ipsam!", duration: 4, director: "Jaja")
m5 = Movie.create!(name: "Mama Mia", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, soluta.", duration: 5, director: "Joos")

g1 = Genre.create!(name: "Comedy")
g2 = Genre.create!(name: "Drama")
g3 = Genre.create!(name: "Action")

Download.create!(user: u1, movie: m1)
Download.create!(user: u2, movie: m2)

WishlistMovie.create!(user: u3, movie: m1)
WishlistMovie.create!(user: u1, movie: m3)
