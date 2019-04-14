class Comment < ApplicationRecord
  belongs_to :sexoffender

  validates :officer,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false

  validates :additionalinfo,
            presence: true,
            length: {maximum: 400 },
            on: :create,
            allow_nil: false

end
