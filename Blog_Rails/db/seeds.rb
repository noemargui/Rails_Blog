# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker' #la gem permettant le remplissage automatique

# Permettent de clear toutes les entrées dans la database
User.destroy_all 
Category.destroy_all
Article.destroy_all
Comment.destroy_all
Like.destroy_all

# Création des 10 utilisateurs
10.times do |user|
	User.create!(first_name: Faker::GreekPhilosophers.unique.name, last_name: Faker::Color.unique.color_name, email: Faker::Internet.unique.email)
end

# Création des 5 catégories
5.times do |category|
	Category.create!(name: Faker::Dessert.unique.flavor)
end

# Création des 10 articles, écrit chacun par un utilisateur et appartenant à une catégorie
10.times do |article|
	Article.create!(title: Faker::Ancient.unique.primordial, content: Faker::GreekPhilosophers.quote, user_id: (rand(User.first.id..User.last.id)), category_id: (rand(Category.first.id ..Category.last.id)))
end

# Création des 15 commentaires, écrits chacun par un utilisateur, et relié à un article
15.times do |comment|
	Comment.create!(content: Faker::SiliconValley.unique.quote, user_id: (rand(User.first.id..User.last.id)), article_id: (rand(Article.first.id..Article.last.id)))
end

# Création des 15 likes, chacun fait par un utilisateur et pour un article
15.times do |like|
	Like.create!(user_id: (rand(User.first.id..User.last.id)), article_id: (rand(Article.first.id..Article.last.id)))
end