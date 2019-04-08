class Phonenumber < ApplicationRecord
  validates_presence_of :name, :home, :office, :cell, :secondary_contact
  validates_numericality_of :home, :office, :cell

end
