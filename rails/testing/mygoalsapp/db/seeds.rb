# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

callie = User.create!(username: 'calpal', password: 'password')
squeaky = User.create!(username: 'squeakfreak', password: 'password')
linus = User.create!(username: 'babykitten', password: 'password')

def coerce_into_camelcase(string)
  string.split(" ").join("_").downcase
end

5.times do
  User.create!(
    username: coerce_into_camelcase(Faker::Games::Zelda.unique.character),
    password: 'password'
  )
end