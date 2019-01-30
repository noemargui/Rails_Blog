# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Jane", last_name: "Birkin", email:"jane@jane.jane")
User.create(first_name: "Marc", last_name: "Laurent", email:"mars@mars.mars")
User.create(first_name: "Leon", last_name: "Legrand", email:"leon@leon.leon")
User.create(first_name: "Miel", last_name: "Gibson", email:"miel@miel.miel")
User.create(first_name: "Jack", last_name: "Luck", email:"jack@jack.jack")
User.create(first_name: "Rob", last_name: "Iwill", email:"rob@rob.rob")

4.times do |index|
  user = User.create!(first_name: "Prenom#{index}", last_name: "Famille#{index}", email: "email#{index}@email.com")
end