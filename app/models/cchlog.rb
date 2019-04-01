class Cchlog < ApplicationRecord
  REASONS = %i[investigation arrest TCIC_entry other grand_jury]
  DISPOSITIONS =%i[file destroy]
end
