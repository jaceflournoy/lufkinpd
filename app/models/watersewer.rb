class Watersewer < ApplicationRecord

  def wateroff_to_string
    wateroff ? 'Yes' : 'No'
  end

  def city_to_string
    cityleak ? 'Yes' : 'No'
  end

  def private_to_string
    privateleak ? 'Yes' : 'No'
  end

  def no_to_string
    noleak ? 'There is no leak' : 'N/A'
  end

  validates :address,
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
  validates :problem,
            presence: true,
            length: {maximum: 400 },
            on: :create,
            allow_nil: false
  validates :comment,
            length: {maximum: 400 },
            on: :create,
            allow_nil: false
end
