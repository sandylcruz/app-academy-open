# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
post = Post.new(title: "Callie's big day")
file = File.open('app/assets/images/linus.jpg')
post.photo.attach(io: file, filename: 'linus.jpg')
isAttached = post.photo.attached?
puts isAttached