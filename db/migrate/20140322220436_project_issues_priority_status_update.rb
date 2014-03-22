class ProjectIssuesPriorityStatusUpdate < ActiveRecord::Migration
  def change
  	add_column :project_issues, :priority, :string
  	add_column :project_issues, :status, :string
  end
end
