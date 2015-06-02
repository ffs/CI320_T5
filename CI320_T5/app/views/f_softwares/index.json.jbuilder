json.array!(@f_softwares) do |f_software|
  json.extract! f_software, :id, :f_software_name, :cpu, :memory, :storage, :version
  json.url f_software_url(f_software, format: :json)
end
