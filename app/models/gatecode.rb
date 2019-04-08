class Gatecode < ApplicationRecord
  validates_presence_of :location, :code

end
