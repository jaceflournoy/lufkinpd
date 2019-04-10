class Sexoffender < ApplicationRecord
  has_one_attached :image

  validates_date :dateofbirth, :on_or_before => lambda {Date.current}
  validates :name,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :address,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :offense,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :risklevel,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :officer,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false
  validates :dateofbirth,
            presence: true,
            on: :create,
            allow_nil: false

  before_create :add_default_sexoff_img, on: [:create, :update]

  private def add_default_sexoff_img
    unless image.attached?
      self.image.attach(io: File.open('app/assets/images/defaultimages/default-avatar.jpg'), filename: 'default-avatar.jpg', content_type: 'image/jpg')
    end
  end

  end

