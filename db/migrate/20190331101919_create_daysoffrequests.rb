class CreateDaysoffrequests < ActiveRecord::Migration[5.2]
  def change
    create_table :daysoffrequests do |t|
      t.string :operatorname
      t.date :firstdayoff
      t.date :lastdayoff
      t.date :returndate
      t.integer :hoursrequested
      t.text :comment
      t.boolean :approved

      t.timestamps
    end
  end
end
