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
Article.destroy_all
Category.destroy_all
Comment.destroy_all
Like.destroy_all

# Création des 10 utilisateurs
10.times do
  user = User.create(first_name: Faker::GreekPhilosophers.unique.name, last_name: Faker::Color.unique.color_name,  email: Faker::Internet.unique.email)
end

# Création des 10 articles
10.times do
  article = Article.create(title: Faker::HarryPotter.unique.book, content: Faker::GreekPhilosophers.quote, user: User.all[rand(10)], category: Category.all[rand(5)])
end

# Création des 5 catégories
5.times do
  category = Category.create(name: Faker::Dessert.unique.flavor)
end

# Création des 15 commentaires
15.times do 
  comment = Comment.create(content: Faker::SiliconValley.unique.quote, user: User.all[rand(10)], article: Article.all[rand(10)])
end