# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Permettent de clear toutes les entrées dans la database
User.destroy_all
Link.destroy_all
Comment.destroy_all
Incomment.destroy_all

# Création de 10 utilisateurs
10.times do |user|
	User.create!(name: Faker::Name.unique.first_name)
end

# Création de 10 liens
10.times do |link|
	Link.create!(content: Faker::Internet.unique.url, user_id: (rand(User.first.id ..User.last.id)))
end

# Création de 20 commentaires
20.times do |comment|
	Comment.create!(content: Faker::GreekPhilosophers.unique.quote, link_id: (rand(Link.first.id ..Link.last.id)), user_id: (rand(User.first.id ..User.last.id)))
end

# Création de 40 sous-commentaires
40.times do |incomment|
	Incomment.create!(content: Faker::ChuckNorris.unique.fact, comment_id: (rand(Comment.first.id ..Comment.last.id)), user_id: (rand(User.first.id ..User.last.id)))
end