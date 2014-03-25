json.array!(@project_issues) do |project_issue|
  json.extract! project_issue, :id, :name, :project_id, :summary, :priority, :status
  json.url project_issue_url(project_issue, format: :json)
end
