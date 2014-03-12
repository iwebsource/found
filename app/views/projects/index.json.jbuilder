json.array!(@projects) do |project|
  json.extract! project, :id, :name, :product_id, :start_date, :end_date, :notes
  json.url project_url(project, format: :json)
end
