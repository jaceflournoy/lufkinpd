class Radionumber < ApplicationRecord

  validates :officer,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :radionumber,
            presence: true,
            length: {maximum: 9},
            allow_nil: false,
            numericality: {only_integer:true, greater_than: 0}
end
