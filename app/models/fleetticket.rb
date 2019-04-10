class Fleetticket < ApplicationRecord

  validates :unitnumber,
            presence: true,
            length: {maximum: 9},
            on: :create,
            allow_nil: false,
            numericality: true
  validates :reportingofficer,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :problem,
            presence: true,
            length: {maximum: 400 },
            on: :create,
            allow_nil: false
end
