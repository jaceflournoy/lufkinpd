class Ithelpticket < ApplicationRecord
  validates_presence_of :name, :unit, :problem
  validates_numericality_of :unit

end
