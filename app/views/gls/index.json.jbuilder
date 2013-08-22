json.array!(@gls) do |gl|
  json.extract! gl, :grocery_list_id, :user_id
  json.url gl_url(gl, format: :json)
end
