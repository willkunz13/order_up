require 'rails_helper'

RSpec.describe 'Dishes' do
  describe 'show page' do
	before(:each) do
		@chef = Chef.create(name: "Tony")
		@dish = Dish.create(name: "Lasagna", description: "its lasagna", chef: @chef)
		@ingredient1 = Ingredient.create(name: "Pasta", calories: "350")
		@ingredient2 = Ingredient.create(name: "Meat", calories: "500")
		@ingredient3 = Ingredient.create(name: "Tomatoes", calories: "130")
		@dish.ingredients << @ingredient1
		@dish.ingredients << @ingredient2
		@dish.ingredients << @ingredient3
	end

	it 'chef and ingredients' do
		visit "/dishes/#{@dish.id}"
		expect(page).to have_content("Tony")
		expect(page).to have_content("Pasta")	
		expect(page).to have_content("Meat")
		expect(page).to have_content("Tomatoes")
		expect(page).to have_content("Total Calories: 980")
	end
   end
end
