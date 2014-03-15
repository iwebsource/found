class CreateStatusTable < ActiveRecord::Migration
  def change
    create_table :status_tables do |t|
      t.string :status
    end
  end
end
