class CreateRadionumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :radionumbers do |t|
      t.string :officer
      t.integer :radionumber
      t.string :extrainfo

      t.timestamps
    end
  end
end
