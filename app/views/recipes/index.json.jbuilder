json.array!(@recipes) do |recipe|
  json.extract! recipe, :name, :body, :time, :vegetable_id
  json.url recipe_url(recipe, format: :json)
end
