class ChefIngredientsController < ApplicationController
	def index
		chef = Chef.find(params[:chef_id])
		@ingredients = Chef.select(Ingredient.arel_table[:name]).where(Chef.arel_table[:name].eq(chef.name)).joins(
  Chef.arel_table.join(Dish.arel_table).on(
    Chef.arel_table[:id].eq(Dish.arel_table[:chef_id])
  ).join_sources
).joins(
  Chef.arel_table.join(DishIngredient.arel_table).on(
    Dish.arel_table[:id].eq(DishIngredient.arel_table[:dish_id])
  ).join_sources
).joins(
  Chef.arel_table.join(Ingredient.arel_table).on(
    DishIngredient.arel_table[:ingredient_id].eq(Ingredient.arel_table[:id])
  ).join_sources
).uniq
	end
end
