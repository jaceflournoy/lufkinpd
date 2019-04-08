class Sexoffender < ApplicationRecord
  has_one_attached :image
  validates_presence_of :name, :address, :offense, :risklevel, :officer, :dateofbirth

end
