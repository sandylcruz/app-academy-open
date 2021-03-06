# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: "calpal", password: "password")
User.create!(username: "squeakfreak", password: "password")
User.create!(username: "flapjack", password: "password")

Bench.create!(lat: 37.768754, lng: -122.426895, description: "Bench at 38 dolores")
Bench.create!(lat: 37.80478736141288, lng: -122.43027414463285, description: "Bench at fort mason")
Bench.create!(lat: 38.937016, lng: -120.005497, description: "Lake tahoe")
Bench.create!(lat: 38.016718, lng: -122.995879, description: "Point reyes")
Bench.create!(lat: 36.607336, lng: -121.895925, description: "Monterey")
Bench.create!(lat: 20.049416, lng: -155.385946, description: "Hawaii")