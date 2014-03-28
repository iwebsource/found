json.array!(@projects) do |project|
  json.extract! project, :id, :name, :product_id, :start_date, :end_date, :notes, :code_lang_id, :description, :project_issue_id, :user_id
  json.url project_url(project, format: :json)
end
