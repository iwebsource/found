json.array!(@products) do |product|
  json.extract! product, :id, :name, :project_id, :details
  json.url product_url(product, format: :json)
end
