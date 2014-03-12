json.array!(@project_issues) do |project_issue|
  json.extract! project_issue, :id, :name, :code_lang_id, :project_id, :summary
  json.url project_issue_url(project_issue, format: :json)
end
