# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

callie = Todo.create!(title: "Callie needs a bath", body: "Use a lot of soap", done: false)
squeaky = Todo.create!(title: "Give squeaky a donut", body: "She's hungry", done: false)

step0 = Step.create!(title: "Pick up Callie", body: "With OveGloves", todo: callie, done: false)
step1 = Step.create!(title: "Get eggs", body: "From refrigerator", todo: callie, done: false)
step2 = Step.create!(title: "Get soap", body: "From cabinet", todo: callie, done: false)
step3 = Step.create!(title: "Go to donut store", body: "In car", todo: squeaky, done: false)