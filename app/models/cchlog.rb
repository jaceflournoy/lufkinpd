class Cchlog < ApplicationRecord
  REASONS = %i[investigation arrest TCIC_entry other grand_jury]
  DISPOSITIONS =%i[file destroy]

  validates_presence_of :name, :idnum, :operator, :officer

end
