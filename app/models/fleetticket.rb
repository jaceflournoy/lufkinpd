class Fleetticket < ApplicationRecord
  validates_presence_of :unitnumber, :reportingofficer, :problem
  validates_numericality_of :unitnumber

  #TODO - this one also doesn't work with the mailer.

end
