json.array!(@db_insts) do |db_inst|
  json.extract! db_inst, :id, :db_inst_name
  json.url db_inst_url(db_inst, format: :json)
end
