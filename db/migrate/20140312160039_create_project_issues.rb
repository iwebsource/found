class CreateProjectIssues < ActiveRecord::Migration
  def change
    create_table :project_issues do |t|
      t.string :name
      t.integer :code_lang_id
      t.integer :project_id
      t.text :summary

      t.timestamps
    end
  end
end
