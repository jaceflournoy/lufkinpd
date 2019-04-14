class Comment < ApplicationRecord
  belongs_to :sexoffender

  validates :officer,
            presence: true,
            length: {maximum: 140},
            allow_nil: false

  validates :additionalinfo,
            presence: true,
            length: {maximum: 400 },
            allow_nil: false

end
