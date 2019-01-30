# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do |course|
	Course.create(title: Faker::Ancient.unique.primordial, description: Faker::BackToTheFuture.unique.quote)
end

20.times do |lesson|
	Lesson.create(title: Faker::Artist.unique.name, body: Faker::DumbAndDumber.unique.quote, course_id: (rand(Course.first.id..Course.last.id)))
end