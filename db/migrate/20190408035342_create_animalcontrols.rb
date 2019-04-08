class CreateAnimalcontrols < ActiveRecord::Migration[5.2]
  def change
    create_table :animalcontrols do |t|
      t.string :address
      t.string :name
      t.string :callback
      t.string :unitassigned
      t.text :problem
      t.text :comment

      t.timestamps
    end
  end
end
