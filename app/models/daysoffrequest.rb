class Daysoffrequest < ApplicationRecord
  TYPES = %i[vacation comp_time holiday birthday sick other]

  validates_date :firstdayoff, :on_or_after => lambda {Date.current}
  validates_date :lastdayoff, :on_or_after => :firstdayoff
  validates_date :returndate, :on_or_after => :firstdayoff

  validates :operatorname,
            presence: true,
            length: {maximum: 140},
            on: :create,
            allow_nil: false

  validates :hoursrequested,
            presence: true,
            length: {maximum: 4},
            on: :create,
            allow_nil: false,
            numericality: true

  validates :comment,
            presence: true,
            length: {maximum: 400},
            on: :create,
            allow_nil: false



  def approved_to_string
    approved ? 'Yes' : 'No'
  end

end
