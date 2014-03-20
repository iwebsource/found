class ChangeProjectNotesDatatype < ActiveRecord::Migration
  def change
  	change_column :projects, :notes, :string
  end
end
