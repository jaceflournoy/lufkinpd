class Sexoffender < ApplicationRecord
  has_one_attached :image
  validates_date :dateofbirth, :on_or_before => lambda {Date.current}
  validates :name,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :address,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :offense,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :risklevel,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :officer,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :dateofbirth,
            presence: true,
            on: :create,
            allow_nil: false
end
