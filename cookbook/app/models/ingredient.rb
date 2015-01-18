class Ingredient < ActiveRecord::Base
  has_many :ingredients_in_recipes
  has_many :recipes, :through => :ingredients_in_recipes
end
