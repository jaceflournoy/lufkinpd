class Citystreet < ApplicationRecord
  def city_to_string
    city ? 'Yes' : 'No'
  end

  def state_to_string
    state ? 'Yes' : 'No'
  end

  def lightout_to_string
    lightout ? 'Yes' : 'No'
  end

  def lightred_to_string
    lightred ? 'Yes' : 'No'
  end

  def roadhazard_to_string
    roadhazard ? 'Yes' : 'No'
  end

  validates :address,
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
  validates :closestintersection,
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
            length: {maximum: 400 },
            allow_nil: false

end
