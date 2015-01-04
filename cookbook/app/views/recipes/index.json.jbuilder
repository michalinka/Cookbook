json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :category, :preparing_time, :difficulty
  json.url recipe_url(recipe, format: :json)
end
