class CreateIthelptickets < ActiveRecord::Migration[5.2]
  def change
    create_table :ithelptickets do |t|
      t.string :name
      t.string :unit
      t.text :problem

      t.timestamps
    end
  end
end
