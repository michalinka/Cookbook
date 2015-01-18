json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :calories, :protein, :carbohydrates, :fat
  json.url ingredient_url(ingredient, format: :json)
end
