# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

linus = User.create!(username: 'linus_the_cat')
callie = User.create!(username: 'callie_the_cat')

artwork_one = Artwork.create!(title: "Cat", artist: callie, image_url: 'google.com')
artwork_two = Artwork.create!(title: 'Cat two', artist: linus, image_url: 'google.com')

artwork_share_one = ArtworkShare.create!(artwork: artwork_one, viewer: callie)
artwork_share_two = ArtworkShare.create!(artwork: artwork_two, viewer: linus)