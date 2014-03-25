class AddUserIdToProjectProjectIssues < ActiveRecord::Migration
  def change
  	add_column :projects, :user_id, :integer
  	add_column :project_issues, :user_id, :integer
  end
end
