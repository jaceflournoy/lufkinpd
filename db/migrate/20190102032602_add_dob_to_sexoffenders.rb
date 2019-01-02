class AddDobToSexoffenders < ActiveRecord::Migration[5.2]
  def change
    add_column :sexoffenders, :dateofbirth, :date
  end
end
