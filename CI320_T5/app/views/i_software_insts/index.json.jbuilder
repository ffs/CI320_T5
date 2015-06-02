json.array!(@i_software_insts) do |i_software_inst|
  json.extract! i_software_inst, :id, :i_software_inst_name
  json.url i_software_inst_url(i_software_inst, format: :json)
end
