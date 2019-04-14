class Daysoffrequest < ApplicationRecord
  TYPES = %i[vacation comp_time holiday birthday sick other]

  validates_date :firstdayoff, :on_or_after => lambda {Date.current}
  validates_date :lastdayoff, :on_or_after => :firstdayoff
  validates_date :returndate, :on_or_after => :firstdayoff

  validates :operatorname,
            presence: true,
            length: {maximum: 140},
            allow_nil: false

  validates :hoursrequested,
            presence: true,
            length: {maximum: 4},
            allow_nil: false,
            numericality: {only_integer:true, greater_than: 0}

  validates :comment,
            length: {maximum: 400},
            allow_nil: false



  def approved_to_string
    approved ? 'Yes' : 'No'
  end

end
