json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :start_date, :end_date, :solicitation_date, :allocation_date
  json.url project_url(project, format: :json)
end
