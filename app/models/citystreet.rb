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


end
