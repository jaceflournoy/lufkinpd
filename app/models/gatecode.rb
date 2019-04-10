class Gatecode < ApplicationRecord
  validates_presence_of :location, :code
  validates :location,
            presence: true,
            length: {maximum: 200},
            on: :create,
            allow_nil: false

  validates :code,
            presence: true,
            length: {maximum: 40},
            on: :create,
            allow_nil: false
end
