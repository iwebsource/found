class DropProjectIssueIdFromProject < ActiveRecord::Migration
  def change
  	remove_column :projects, :project_issue_id
  end
end
