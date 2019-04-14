class Rollcall < ApplicationRecord
  validates :radionum,
            presence: true,
            length: {maximum: 9},
            allow_nil: false,
            numericality: {only_integer:true, greater_than: 0}

  validates :title,
            presence: true,
            length: {maximum: 140},
            allow_nil: false

  validates :description,
            presence: true,
            length: {maximum: 400},
            allow_nil: false
end
