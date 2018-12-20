class CreateRollcalls < ActiveRecord::Migration[5.2]
  def change
    create_table :rollcalls do |t|
      t.integer :radionum
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
