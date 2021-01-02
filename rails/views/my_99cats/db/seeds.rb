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