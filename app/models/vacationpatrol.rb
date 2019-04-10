class Vacationpatrol < ApplicationRecord
  validates :officer,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false

  validates :comment,
            presence: true,
            length: {maximum: 400 },
            on: :create,
            allow_nil: false
end
