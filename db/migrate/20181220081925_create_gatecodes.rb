class CreateGatecodes < ActiveRecord::Migration[5.2]
  def change
    create_table :gatecodes do |t|
      t.string :location
      t.string :code

      t.timestamps
    end
  end
end
