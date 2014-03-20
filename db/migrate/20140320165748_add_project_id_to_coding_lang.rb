class AddProjectIdToCodingLang < ActiveRecord::Migration
  def change
  	add_column :coding_langs, :project_id, :integer
  end
end
