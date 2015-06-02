json.array!(@f_software_insts) do |f_software_inst|
  json.extract! f_software_inst, :id, :f_software_inst_name
  json.url f_software_inst_url(f_software_inst, format: :json)
end
