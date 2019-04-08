class Radionumber < ApplicationRecord
  validates_numericality_of :radionumber
  validates_presence_of :officer, :radionumber

  #TODO - i didn't include the "Extra Info" as required.

end
