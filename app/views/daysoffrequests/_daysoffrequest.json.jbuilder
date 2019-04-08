json.extract! daysoffrequest, :id, :operatorname, :firstdayoff, :lastdayoff, :returndate, :hoursrequested, :comment, :approved, :created_at, :updated_at
json.url daysoffrequest_url(daysoffrequest, format: :json)
