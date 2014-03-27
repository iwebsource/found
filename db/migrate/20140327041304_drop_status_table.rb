class DropStatusTable < ActiveRecord::Migration
  def up
    drop_table :status_tables
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
