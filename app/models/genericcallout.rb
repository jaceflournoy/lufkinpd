class Genericcallout < ApplicationRecord
  validates :address,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :name,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :callback,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :unitassigned,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :problem,
            presence: true,
            length: {maximum: 400 },
            on: :create,
            allow_nil: false
  validates :comment,
            length: {maximum: 400 },
            on: :create,
            allow_nil: false
end
