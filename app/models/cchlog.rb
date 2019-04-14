class Cchlog < ApplicationRecord
  REASONS = %i[investigation arrest TCIC_entry other grand_jury]
  DISPOSITIONS =%i[file destroy]

  validates_date :dateofbirth, :on_or_before => lambda {Date.current}
  validates :name,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :idnum,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :operator,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :officer,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :dateofbirth,
            presence: true,
            allow_nil: false
end
