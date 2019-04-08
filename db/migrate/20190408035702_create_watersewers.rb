class CreateWatersewers < ActiveRecord::Migration[5.2]
  def change
    create_table :watersewers do |t|
      t.string :address
      t.string :name
      t.string :callback
      t.string :unitassigned
      t.text :problem
      t.boolean :wateroff
      t.boolean :cityleak
      t.boolean :privateleak
      t.boolean :noleak
      t.text :comment

      t.timestamps
    end
  end
end
