class CreateSexoffenders < ActiveRecord::Migration[5.2]
  def change
    create_table :sexoffenders do |t|
      t.string :name
      t.string :address
      t.string :offense
      t.string :risklevel
      t.string :officer

      t.timestamps
    end
  end
end
