class Phonenumber < ApplicationRecord
  validates :name,
            presence: true,
            length: {maximum: 140},
            allow_nil: false,
            format: { with: /\A^[\p{L}\s'.-]+$\z/,
                      message: "only allows letters, dashes, apostrophes, and periods." }

  validates :home,
            length: {maximum: 140},
            allow_nil: false

  validates :office,
            length: {maximum: 140},
            allow_nil: false

  validates :cell,
            length: {maximum: 140},
            allow_nil: false

  validates :secondary_contact,
            length: {maximum: 140},
            allow_nil: false

  validate :any_present?

  def any_present?
    if %w(home office cell secondary_contact).all?{|attr| self[attr].blank?}
      errors.add :base, "At least one phone number must be entered."
    end
  end

end
