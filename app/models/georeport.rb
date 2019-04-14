class Georeport < ApplicationRecord
  validates :presentaddress,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :changeaddrto,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :biznamechange,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :name1,
            length: {maximum: 140},
            allow_nil: false
  validates :name2,
            length: {maximum: 140},
            allow_nil: false
  validates :name3,
            length: {maximum: 140},
            allow_nil: false
  validates :phone1,
            length: {maximum: 140},
            allow_nil: false
  validates :phone2,
            length: {maximum: 140},
            allow_nil: false
  validates :phone3,
            length: {maximum: 140},
            allow_nil: false
  validates :reportedby,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :comment,
            length: {maximum: 400 },
            allow_nil: false
end
