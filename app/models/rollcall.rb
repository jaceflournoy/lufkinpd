class Rollcall < ApplicationRecord
  validates :radionum,
            presence: true,
            length: {maximum: 9},
            on: :create,
            allow_nil: false,
            numericality: {only_integer:true, greater_than: 0}

  validates :title,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false

  validates :description,
            presence: true,
            length: {maximum: 400},
            on: :create,
            allow_nil: false
end
