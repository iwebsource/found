class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :project_id
      t.text :details

      t.timestamps
    end
  end
end
