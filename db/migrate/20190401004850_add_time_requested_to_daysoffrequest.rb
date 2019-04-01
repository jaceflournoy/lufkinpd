class AddTimeRequestedToDaysoffrequest < ActiveRecord::Migration[5.2]
  def change
    add_column :daysoffrequests, :timerequested, :string
  end
end
