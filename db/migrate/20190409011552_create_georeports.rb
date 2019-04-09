class CreateGeoreports < ActiveRecord::Migration[5.2]
  def change
    create_table :georeports do |t|
      t.string :presentaddress
      t.string :changeaddrto
      t.string :biznamechange
      t.text :comment
      t.string :name1
      t.string :phone1
      t.string :name2
      t.string :phone2
      t.string :name3
      t.string :phone3
      t.string :reportedby

      t.timestamps
    end
  end
end
