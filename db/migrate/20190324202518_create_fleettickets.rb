class CreateFleettickets < ActiveRecord::Migration[5.2]
  def change
    create_table :fleettickets do |t|
      t.integer :unitnumber
      t.string :reportingofficer
      t.text :problem

      t.timestamps
    end
  end
end
