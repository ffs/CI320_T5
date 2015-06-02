json.array!(@servers) do |server|
  json.extract! server, :id, :server_name, :cpu, :memory, :storage, :ip_address, :oper_sys
  json.url server_url(server, format: :json)
end
