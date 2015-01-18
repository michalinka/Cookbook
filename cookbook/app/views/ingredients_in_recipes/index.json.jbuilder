json.array!(@ingredients_in_recipes) do |ingredients_in_recipe|
  json.extract! ingredients_in_recipe, :id, :recipe_id, :ingredient_id, :amount
  json.url ingredients_in_recipe_url(ingredients_in_recipe, format: :json)
end
