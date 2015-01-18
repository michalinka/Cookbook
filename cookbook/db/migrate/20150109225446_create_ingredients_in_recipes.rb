class CreateIngredientsInRecipes < ActiveRecord::Migration
  def change
    create_table :ingredients_in_recipes do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.float :amount

      t.timestamps null: false
    end
  end
end
