class Daysoffrequest < ApplicationRecord
  TYPES = %i[vacation comp_time holiday birthday sick other]

  validates_presence_of :operatorname, :hoursrequested, :comment
  validates_numericality_of :hoursrequested

  def approved_to_string
    approved ? 'Yes' : 'No'
  end

end
