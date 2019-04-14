class Vacationpatrol < ApplicationRecord
  validates :officer,
            presence: true,
            length: {maximum: 140},
            allow_nil: false

  validates :comment,
            presence: true,
            length: {maximum: 400 },
            allow_nil: false
end
