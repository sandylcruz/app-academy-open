# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

callie = User.create!(email: 'calpal@gmail.com', password: 'callieisbest')
squeaky = User.create!(email: 'squeakfreak@gmail.com', password: 'password')
linus = User.create!(email: 'oldmanlinus@gmail.com', password: 'password')

cat_sabbath = Band.create!(name: 'Cat Sabbath')
purvanna = Band.create!(name: 'Purvanna')
meowhaus = Band.create!(name: 'Meowhaus')
metallicat = Band.create!(name: 'Metallicat')

album1 = Album.create!(title: 'Meowy Catmas Album', year: 2000, band: cat_sabbath, live: false)
album2 = Album.create!(title: 'Tale of Two Kittens Album', year: 2000, band: purvanna, live: false)
album3 = Album.create!(title: 'Callies revenge album', year: 2000, band: meowhaus, live: false)
album4 = Album.create!(title: 'Callies baby album', year: 2000, band: metallicat, live: false)

track1 = Track.create!(name: 'Cat Attack Track', album: album1, bonus: true, ord: 1)
track2 = Track.create!(name: 'Kitten Attack Track', album: album2, bonus: false, ord: 1)
track3 = Track.create!(name: 'Callieopolis Track', album: album3, bonus: true, ord: 1)
track4 = Track.create!(name: 'Squeakland Track', album: album4, bonus: true, ord: 1)