class Ingredient <ApplicationRecord
	 has_many :dish_ingredients
        has_many :dishes, through: :dish_ingredients

  validates_presence_of :name, :calories
  
end

