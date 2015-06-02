json.array!(@integrations) do |integration|
  json.extract! integration, :id
  json.url integration_url(integration, format: :json)
end
