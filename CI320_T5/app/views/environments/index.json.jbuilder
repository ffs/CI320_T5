json.array!(@environments) do |environment|
  json.extract! environment, :id, :environment_name
  json.url environment_url(environment, format: :json)
end
