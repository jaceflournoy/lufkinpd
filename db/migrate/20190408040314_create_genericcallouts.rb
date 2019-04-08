class CreateGenericcallouts < ActiveRecord::Migration[5.2]
  def change
    create_table :genericcallouts do |t|
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
