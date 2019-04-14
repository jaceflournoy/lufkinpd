class Fleetticket < ApplicationRecord

  validates :unitnumber,
            presence: true,
            length: {maximum: 9},
            allow_nil: false,
            numericality: true
  validates :reportingofficer,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :problem,
            presence: true,
            length: {maximum: 400 },
            allow_nil: false
end
