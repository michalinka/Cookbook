class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.integer :preparing_time
      t.integer :difficulty

      t.timestamps null: false
    end
  end
end
