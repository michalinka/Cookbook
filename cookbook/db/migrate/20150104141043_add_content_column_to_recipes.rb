class AddContentColumnToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :content, :string
  end
end
