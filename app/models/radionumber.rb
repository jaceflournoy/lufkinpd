class Radionumber < ApplicationRecord
  validates_numericality_of :radionumber
  validates_presence_of :officer, :radionumber

end
