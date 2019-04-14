class Radionumber < ApplicationRecord

  validates :officer,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :radionumber,
            presence: true,
            length: {maximum: 9},
            on: :create,
            allow_nil: false,
            numericality: {only_integer:true, greater_than: 0}
end
