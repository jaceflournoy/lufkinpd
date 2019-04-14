class Trouble911 < ApplicationRecord
  validates :providername,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :phonenumber,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :faxnumber,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :extrainfo,
            length: {maximum: 240},
            allow_nil: false
end
