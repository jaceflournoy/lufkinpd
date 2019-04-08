class CreateVacationpatrols < ActiveRecord::Migration[5.2]
  def change
    create_table :vacationpatrols do |t|
      t.string :officer
      t.text :comment

      t.timestamps
    end
  end
end
