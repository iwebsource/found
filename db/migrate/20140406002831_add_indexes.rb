class AddIndexes < ActiveRecord::Migration
  def change
    add_index :coding_langs, :project_id
	add_index :products, :project_id
	add_index :project_issues, :project_id
	add_index :project_issues, :user_id
	add_index :projects, :product_id
	add_index :projects, :user_id
  end
end
