# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require "json"
require "open-uri"

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredient_serialized = open(url).read
ingredients = JSON.parse(ingredient_serialized)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts 'Cleaning database...'
Cocktail.destroy_all

puts 'Creating cocktails...'
cocktails_attributes = [
  {
    name:         'Mojito',
  },
  {
    name:         'Blabla',
  },
  {
    name:         'Cuba libre',
  }
]
Cocktail.create!(cocktails_attributes)
puts 'Finished!'
