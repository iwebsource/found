class CreateCodingLangs < ActiveRecord::Migration
  def change
    create_table :coding_langs do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
