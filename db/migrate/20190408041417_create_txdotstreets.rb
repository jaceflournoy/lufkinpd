class CreateTxdotstreets < ActiveRecord::Migration[5.2]
  def change
    create_table :txdotstreets do |t|
      t.string :intersection
      t.string :name
      t.string :callback
      t.string :unitassigned
      t.text :problem
      t.boolean :city
      t.boolean :state
      t.string :needed
      t.text :comment

      t.timestamps
    end
  end
end
