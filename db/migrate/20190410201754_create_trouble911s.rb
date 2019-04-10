class CreateTrouble911s < ActiveRecord::Migration[5.2]
  def change
    create_table :trouble911s do |t|
      t.string :providername
      t.string :phonenumber
      t.string :faxnumber
      t.string :extrainfo

      t.timestamps
    end
  end
end
