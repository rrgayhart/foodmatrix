json.array!(@spices) do |spice|
  json.extract! spice, :name, :body
  json.url spice_url(spice, format: :json)
end
