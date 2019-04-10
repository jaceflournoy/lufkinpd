class Phonenumber < ApplicationRecord
  validates :name,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false

  validates :home,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false

  validates :office,
            length: {maximum: 140},
            on: :create,
            allow_nil: false

  validates :cell,
            length: {maximum: 140},
            on: :create,
            allow_nil: false

  validates :secondary_contact,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
end
