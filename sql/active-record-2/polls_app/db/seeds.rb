# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

callie = User.create!(username: 'calliecat')
squeaky = User.create!(username: 'squeakycat')
linus = User.create!(username: 'linuscat')

food_poll = Poll.create!(name: 'Food poll', author: callie)
spot_week_poll = Poll.create!(name: 'Spot of the week', author: squeaky)

first_food_question = Question.create!(poll: food_poll, text: 'What is the best type of food?')
second_food_question = Question.create!(poll: food_poll, text: 'What is the best meat?')
first_spot_week_question = Question.create!(poll: spot_week_poll, text: 'Would you rather sleep upstairs or downstairs?')
second_spot_week_question = Question.create!(poll: spot_week_poll, text: 'Where is the upstairs spot of the week?')

ac1_first_food_question = AnswerChoice.create!(question: first_food_question, text: 'Wet food')
ac2_first_food_question = AnswerChoice.create!(question: first_food_question, text: 'No food')

ac1_second_food_question = AnswerChoice.create!(question: second_food_question, text: 'Chicken')
ac2_second_food_question = AnswerChoice.create!(question: second_food_question, text: 'Salmon')

ac1_first_spot_week_question = AnswerChoice.create!(question: first_spot_week_question, text: 'Upstairs')
ac2_first_spot_week_question = AnswerChoice.create!(question: first_spot_week_question, text: 'Downstairs')

ac1_second_spot_week_question = AnswerChoice.create!(question: second_spot_week_question, text: 'Basket')
ac2_second_spot_week_question = AnswerChoice.create!(question: second_spot_week_question, text: 'Window')

Response.create!(answer_choice: ac1_first_food_question, respondent: linus)
Response.create!(answer_choice:  ac1_second_food_question, respondent: linus)
Response.create!(answer_choice:  ac1_first_spot_week_question, respondent: linus)
Response.create!(answer_choice:  ac1_second_spot_week_question, respondent: linus)

Response.create!(answer_choice: ac2_first_food_question, respondent: squeaky)
Response.create!(answer_choice: ac2_second_food_question, respondent: squeaky)

Response.create!(answer_choice: ac2_first_spot_week_question, respondent: callie)
Response.create!(answer_choice: ac2_second_spot_week_question, respondent: callie)



