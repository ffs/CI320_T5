json.array!(@i_softwares) do |i_software|
  json.extract! i_software, :id, :i_software_name, :version
  json.url i_software_url(i_software, format: :json)
end
