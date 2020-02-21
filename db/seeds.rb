# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)	                @chef = Chef.create(name: "Tony")
		chef = Chef.create(name: "Tony")
                dish = Dish.create(name: "Lasagna", description: "its lasagna", chef: chef)
                ingredient1 = Ingredient.create(name: "Pasta", calories: "350")
                ingredient2 = Ingredient.create(name: "Meat", calories: "500")
                ingredient3 = Ingredient.create(name: "Tomatoes", calories: "130")
                dish.ingredients << ingredient1
                dish.ingredients << ingredient2
                dish.ingredients << ingredient3

