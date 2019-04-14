class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :officer
      t.text :additionalinfo
      t.references :sexoffender, foreign_key: true

      t.timestamps
    end
  end
end
