class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :product_id
      t.date :start_date
      t.date :end_date
      t.text :notes

      t.timestamps
    end
  end
end
