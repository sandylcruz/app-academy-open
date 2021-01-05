# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

callie = Cat.create!(name: "Callie", sex: "F", color: "Tuxedo", birth_date: "2004-04-01", description: "One old cat for sale")
squeaky = Cat.create!(name: "Squeaky", sex: "F", color: "Dilute-tortie", birth_date: "2017-02-14", description: "Mama squeaky")
linus = Cat.create!(name: "Linus", sex: "M", color: "Tabby", birth_date: "2020-09-09", description: "Baby kitten")

request_one = CatRentalRequest.create!(cat: callie, start_date: '2021-01-01', end_date: '2021-01-05')
request_two = CatRentalRequest.create!(cat: callie, start_date: '2021-01-10', end_date: '2021-01-15')
request_three = CatRentalRequest.create!(cat: squeaky, start_date: '2021-01-10', end_date: '2021-01-15')
request_four = CatRentalRequest.create!(cat: squeaky, start_date: '2021-01-10', end_date: '2021-01-15')
request_five = CatRentalRequest.create!(cat: linus, start_date: '2021-01-10', end_date: '2021-01-15')