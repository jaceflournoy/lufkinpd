class Trouble911 < ApplicationRecord
  validates :providername,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :phonenumber,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :faxnumber,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :extrainfo,
            length: {maximum: 240},
            on: :create,
            allow_nil: false
end
