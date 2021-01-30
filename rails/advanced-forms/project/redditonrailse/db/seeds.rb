# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

callie = User.create!(username: 'calpal', password: 'password')
squeaky = User.create!(username: 'squeakfreak', password: 'password')
linus = User.create!(username: 'oldmanlinus', password: 'password')

sub1 = Sub.create!(title: 'Attack Cat', description: 'Learn how to attack', moderator: callie)
sub2 = Sub.create!(title: 'Cool Cats', description: 'Only cool cats allowed', moderator: squeaky)
sub3 = Sub.create!(title: 'Home Is Where the Cat Is', description: 'Home obviously', moderator: linus)

post1 = Post.create!(title: 'Callie\'s Big Day', content: 'Callie has a big day outside forever', author: callie, subs: [sub1])
post2 = Post.create!(title: 'Squeaky\'s Previous Life', content: 'Squeaky used to live in Santa Rosa, but now lives somewhere cooler', author: squeaky, subs: [sub1, sub2])
post3 = Post.create!(title: 'Preview of Old Man Linus', content: 'He makes a lot of old man sounds now', author: linus, subs: [sub3])

comment1 = Comment.create!(post: post1, author: callie, body: "This is a parent comment")
comment2 = Comment.create!(post: post2, author: squeaky, body: "This is a parent comment too")
comment3 = Comment.create!(post: post3, author: linus, body: "This is a parent comment as well")



