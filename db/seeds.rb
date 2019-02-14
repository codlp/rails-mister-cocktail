# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'open-uri'
require 'json'

cocktail_ingredients = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
ingredients = JSON.parse(cocktail_ingredients)

ingredients.each do |ingredient|
  ingredient[1].each do |element|
    Ingredient.create(name: element['strIgrendient1'])
  end
end
