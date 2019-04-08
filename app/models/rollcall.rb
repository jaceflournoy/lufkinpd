class Rollcall < ApplicationRecord
  validates_presence_of :radionum, :title, :description
  validates_numericality_of :radionum

end
