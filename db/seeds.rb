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

User.create(first_name: "Joos", last_name: "Ephina")
User.create(first_name: "Driss", last_name: "Frans")
User.create(first_name: "Malou", last_name: "Leiuh")

Movie.create(name: "Lorem ipsum dolor.", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, exercitationem!", genre: "Lorem.", duration: 1, director: "Tres tres beaucoup de plus")
Movie.create(name: "Lorem ipsum dolor.", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum, adipisci.", genre: "Lorem.", duration: 2, director: "Mais non")
Movie.create(name: "Lorem ipsum dolor.", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, adipisci.", genre: "Lorem.", duration: 3, director: "Vive")
Movie.create(name: "Lorem ipsum dolor.", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, ipsam!", genre: "Lorem.", duration: 4, director: "Jaja")
Movie.create(name: "Lorem ipsum dolor.", summary: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, soluta.", genre: "Lorem.", duration: 5, director: "Joos")

Download.create(user: 1, movie: 1)
Download.create(user: 2, movie: 2)

WishlistMovie.create(user: 2, movie: 1)
WishlistMovie.create(user: 1, movie: 3)
