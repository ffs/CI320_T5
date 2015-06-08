json.array!(@roles) do |role|
  json.extract! role, :id, :role_name, :role_description
  json.url role_url(role, format: :json)
end
