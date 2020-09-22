class Nota < ApplicationRecord
  belongs_to :materia, optional: true
end
