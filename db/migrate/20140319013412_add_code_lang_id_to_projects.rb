class AddCodeLangIdToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :code_lang_id, :integer
  end
end
