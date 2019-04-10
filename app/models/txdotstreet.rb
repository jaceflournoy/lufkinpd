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
  validates :needed,
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
            presence: true,
            length: {maximum: 400 },
            on: :create,
            allow_nil: false
end
