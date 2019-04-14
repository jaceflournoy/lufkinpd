class Ithelpticket < ApplicationRecord
  validates_presence_of :name, :unit, :problem
  validates :name,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :unit,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :problem,
            presence: true,
            length: {maximum: 400},
            allow_nil: false
end
