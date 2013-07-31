json.array!(@fats) do |fat|
  json.extract! fat, :name, :body
  json.url fat_url(fat, format: :json)
end
