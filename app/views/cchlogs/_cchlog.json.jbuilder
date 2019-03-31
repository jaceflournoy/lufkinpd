json.extract! cchlog, :id, :name, :dateofbirth, :idnum, :operator, :reason, :officer, :disposition, :dispositiondate, :comment, :created_at, :updated_at
json.url cchlog_url(cchlog, format: :json)
