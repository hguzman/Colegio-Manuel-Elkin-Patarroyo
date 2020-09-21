class Materia < ApplicationRecord
  belongs_to :user
  has_many :notas
end
