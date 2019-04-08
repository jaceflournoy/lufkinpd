class CreateCchlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :cchlogs do |t|
      t.string :name
      t.date :dateofbirth
      t.string :idnum
      t.string :operator
      t.string :reason
      t.string :officer
      t.string :disposition
      t.date :dispositiondate
      t.text :comment

      t.timestamps
    end
  end
end
