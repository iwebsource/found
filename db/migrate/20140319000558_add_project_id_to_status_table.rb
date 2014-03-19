class AddProjectIdToStatusTable < ActiveRecord::Migration
  def change
  	add_column :status_tables, :project_id, :integer
  end
end
