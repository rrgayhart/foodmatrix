json.array!(@vegetables) do |vegetable|
  json.extract! vegetable, :name, :body
  json.url vegetable_url(vegetable, format: :json)
end
