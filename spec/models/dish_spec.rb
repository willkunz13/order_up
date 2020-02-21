require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :description}
  end
  describe "relationships" do
    it {should belong_to :chef}
	it {should have_many :dish_ingredients}
        it { should have_many(:ingredients).through(:dish_ingredients)}
  end
  describe "methods" do
	it "total_calories" do
		chef = Chef.create(name: "Tony")
		dish = Dish.create(name: "Lasagna", description: "its lasagna", chef: chef)
                ingredient1 = Ingredient.create(name: "Pasta", calories: "350")
                ingredient2 = Ingredient.create(name: "Meat", calories: "500")
                ingredient3 = Ingredient.create(name: "Tomatoes", calories: "130")
                dish.ingredients << ingredient1
                dish.ingredients << ingredient2
                dish.ingredients << ingredient3

		expect(dish.total_calories).to eq(980)
	end
   end
end
