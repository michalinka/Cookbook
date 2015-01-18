class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :calories
      t.integer :protein
      t.integer :carbohydrates
      t.integer :fat

      t.timestamps null: false
    end
  end
end
