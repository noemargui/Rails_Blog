# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Permettent de clear toutes les entrées dans la database
Student.destroy_all
Lesson.destroy_all

# Création de 10 étudiants
10.times do |student|
	Student.create!(name: Faker::Name.unique.first_name, lesson_id: (rand(Lesson.first.id..Lesson.last.id)))
end

# Création de 10 cours
10.times do |lesson|
	Lesson.create!(title: Faker::Hipster.unique.sentence)
end