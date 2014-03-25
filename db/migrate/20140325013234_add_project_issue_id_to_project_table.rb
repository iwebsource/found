class AddProjectIssueIdToProjectTable < ActiveRecord::Migration
  def change
  	add_column :projects, :project_issue_id, :integer
  end
end
