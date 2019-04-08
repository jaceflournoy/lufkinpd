class CreateCitystreets < ActiveRecord::Migration[5.2]
  def change
    create_table :citystreets do |t|
      t.string :address
      t.string :name
      t.string :callback
      t.string :unitassigned
      t.text :problem
      t.string :closestintersection
      t.boolean :city
      t.boolean :state
      t.boolean :lightout
      t.boolean :lightred
      t.boolean :roadhazard
      t.string :needed
      t.text :comment

      t.timestamps
    end
  end
end
