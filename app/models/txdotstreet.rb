class Txdotstreet < ApplicationRecord

  def city_to_string
    city ? 'Yes' : 'No'
  end

  def state_to_string
    state ? 'Yes' : 'No'
  end

end
