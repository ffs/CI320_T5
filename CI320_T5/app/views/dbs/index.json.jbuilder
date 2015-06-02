json.array!(@dbs) do |db|
  json.extract! db, :id, :db_name, :version, :growthRate, :clonedate, :cpu, :memory, :storage
  json.url db_url(db, format: :json)
end
