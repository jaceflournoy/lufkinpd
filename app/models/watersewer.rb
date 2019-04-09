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

end
