class Georeport < ApplicationRecord
  validates :presentaddress,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :changeaddrto,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :biznamechange,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :name1,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :name2,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :name3,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :phone1,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :phone2,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :phone3,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :reportedby,
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
