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
Pin.destroy_all
Comment.destroy_all

# Création des 10 utilisateurs
10.times do |user|
	User.create(name: Faker::Name.unique.first_name)
end

# Création des 20 pins
20.times do |pin|
	Pin.create(url: Faker::Internet.unique.domain_name, user_id: (rand(User.first.id..User.last.id)))
end

# Création de 40 commentaires
40.times do |comment|
	Comment.create(content: Faker::GreekPhilosophers.quote, pin_id: (rand(Pin.first.id..Pin.last.id)), user_id: (rand(User.first.id..User.last.id)))
end