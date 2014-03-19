class AddProjectIssueIdToStatusTable < ActiveRecord::Migration
  def change
  	add_column :status_tables, :project_issue_id, :integer
  end
end
