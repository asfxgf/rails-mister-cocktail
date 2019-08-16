# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all..."
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

puts "destroyed !"

puts "creating ingredients..."

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")

puts "Ingredients created !"

puts "creating cocktails..."

coco = Cocktail.create(name: "coco")
perroquet = Cocktail.create(name: "perroquet")
dydy = Cocktail.create(name: "dydy")

puts "cocktails created !"

puts "creating doses ..."

Dose.create(description: "4cl", cocktail: coco, ingredient: lemon)
Dose.create(description: "6cl", cocktail: perroquet, ingredient: ice)
Dose.create(description: "8cl", cocktail: dydy, ingredient: mint_leaves)

puts "doses created"
