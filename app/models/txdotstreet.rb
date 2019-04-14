class Txdotstreet < ApplicationRecord

  def city_to_string
    city ? 'Yes' : 'No'
  end

  def state_to_string
    state ? 'Yes' : 'No'
  end
  validates :intersection,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :name,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :callback,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :unitassigned,
            presence: true,
            length: {maximum: 140},
            allow_nil: false
  validates :needed,
            length: {maximum: 140},
            allow_nil: false
  validates :problem,
            presence: true,
            length: {maximum: 400 },
            allow_nil: false
  validates :comment,
            presence: true,
            length: {maximum: 400 },
            allow_nil: false
end
