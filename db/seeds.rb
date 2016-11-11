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

u1 = User.create!(first_name: "Joos", last_name: "Ephina", email: "jo@os.nl", password: "secret", admin: false)
u2 = User.create!(first_name: "Driss", last_name: "Frans", email: "dri@ss.nl", password: "secret", admin: false)
u3 = User.create!(first_name: "Malou", last_name: "Leiuh", email: "ma@lou.nl", password: "secret", admin: true)


m1 = Movie.create!(name: "Lorem ipsum dolor.", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, exercitationem!", genre: "Lorem.", duration: 1, director: "Tres tres beaucoup de plus")
m2 = Movie.create!(name: "Lorem ipsum dolor.", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum, adipisci.", genre: "Lorem.", duration: 2, director: "Mais non")
m3 = Movie.create!(name: "Lorem ipsum dolor.", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, adipisci.", genre: "Lorem.", duration: 3, director: "Vive")
Movie.create!(name: "Lorem ipsum dolor.", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, ipsam!", genre: "Lorem.", duration: 4, director: "Jaja")
Movie.create!(name: "Lorem ipsum dolor.", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, soluta.", genre: "Lorem.", duration: 5, director: "Joos")

Download.create!(user: u1, movie: m1)
Download.create!(user: u2, movie: m2)

WishlistMovie.create!(user: u3, movie: m1)
WishlistMovie.create!(user: u1, movie: m3)
