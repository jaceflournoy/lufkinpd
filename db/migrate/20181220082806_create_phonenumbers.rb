class CreatePhonenumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :phonenumbers do |t|
      t.string :name
      t.string :home
      t.string :office
      t.string :cell
      t.string :secondary_contact

      t.timestamps
    end
  end
end
