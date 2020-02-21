class ChefIngredientsController < ApplicationController
	def index
		chef = Chef.find(params[:chef_id])
		dishes = chef.dishes
		ingredients = []
		dishes.each do |dish|
			ingredients << dish.ingredients
		end
		@ingredients = ingredients.uniq.flatten(1)
	end
end
