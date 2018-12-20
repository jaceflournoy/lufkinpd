class CreatePhonenumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :phonenumbers do |t|
      t.string :name
      t.integer :home
      t.integer :office
      t.integer :cell
      t.integer :secondary_contact

      t.timestamps
    end
  end
end
