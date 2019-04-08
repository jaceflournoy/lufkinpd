class Ithelpticket < ApplicationRecord
  validates_presence_of :name, :unit, :problem

end
